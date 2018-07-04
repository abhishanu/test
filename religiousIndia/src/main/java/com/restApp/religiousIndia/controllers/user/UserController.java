package com.restApp.religiousIndia.controllers.user;

import java.util.Date;
import java.util.Map;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.transaction.TransactionSystemException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.restApp.religiousIndia.data.entities.users.Login;
import com.restApp.religiousIndia.data.entities.users.UserDetailsImpl;
import com.restApp.religiousIndia.data.repositry.users.LogInRepositry;
import com.restApp.religiousIndia.payload.JwtAuthenticationResponse;
import com.restApp.religiousIndia.payload.UserSummary;
import com.restApp.religiousIndia.request.filter.PostRequestWithOutArray;
import com.restApp.religiousIndia.response.Response;
import com.restApp.religiousIndia.response.status.ResponseStatus;
import com.restApp.religiousIndia.security.CurrentUser;
import com.restApp.religiousIndia.security.UserPrincipal;
import com.restApp.religiousIndia.services.mail.MailService;
import com.restApp.religiousIndia.services.users.FacebookService;
import com.restApp.religiousIndia.services.users.LoginService;
import com.restApp.religiousIndia.services.users.UserServices;
import com.restApp.religiousIndia.utilities.EmailValidator;;

@RestController
@CrossOrigin
public class UserController {
	private static Logger logger = Logger.getLogger(UserController.class);
	@Autowired
	UserServices userServices;

	@Autowired
	LoginService loginService;

	@Autowired
	MailService mailService;

	@Autowired
	FacebookService facebookService;

	@Autowired
	private LogInRepositry logInRepositry;

	@Value("{ui.server.link}")
	private String uiLink;

	@GetMapping("/createFacebookAuthorization")
	public String createFacebookAuthorization() {
		return facebookService.createFacebookAuthorizationURL();
	}

	// TO-DO
	@GetMapping("/getUserRole/{userRoleID}")
	public String getUserRole(@PathVariable("userRoleID") String userRoleID) {
		return userServices.getUserRoles(userRoleID).toString();
	}

	@PostMapping("/userSignUp")
	public ResponseEntity<Response> saveUserLogInDetails(@RequestBody PostRequestWithOutArray signUpRequest) {
		logger.info("/sign Up request");
		Response response = new Response();
		if (signUpRequest != null) {
			try {
				response = loginService.signUp(signUpRequest);
				if (response.getStatus().equals(ResponseStatus.OK)) {
					UserDetailsImpl userDetails = (UserDetailsImpl) response.getResponse();

					String messageBody = "<h4>Hi<b> &nbsp" + userDetails.getFirstName().toUpperCase()
							+ "</b>,<br><br></h4>";

					messageBody += "Welcome to <i><a href='" + uiLink + "'>Religious India</a></i><br><br>";

					messageBody += "<b>Activation Link:</b>" + "<br><br>";

					messageBody += mailService.getImpNotes();

					messageBody += mailService.getMailSignature();

					/*
					 * mailService.sendEmail(userDetails.getEmail(),
					 * messageBody, "SuccessFully registerd to Relogious India",
					 * true);
					 */
					response.setResponse("User details saved successfully");
				}
			} catch (TransactionSystemException e) {
				logger.error("Error:" + e + " in userSignUp");
				response.setResponse("User record exists with this email. Please try with another mailID");
				response.setStatus(ResponseStatus.INVALID);
			} catch (Exception e) {
				logger.error("Error:" + e + " in userSignUp");
				response.setResponse("Something went wrong.Please try later.");
				response.setStatus(ResponseStatus.INTERNAL_SERVER_ERROR);
			}

		}
		return ResponseEntity.ok(response);
	}

	@PostMapping("/login")
	public ResponseEntity<Response> login(@Valid @RequestBody PostRequestWithOutArray signInRequest) {
		logger.info("Log in requesut");
		Response response = new Response();
		Map<String, String> requestParam = signInRequest.getRequestParam();

		if (signInRequest != null) {
			if (signInRequest.getRequestType().equalsIgnoreCase("login")) {
				String id = requestParam.get("id");
				String pwd = requestParam.get("pwd");
				if (id == null || pwd == null) {
					response.setStatus(ResponseStatus.ERROR);
					response.setResponse("Id or password can'nt be null");
					return ResponseEntity.ok(response);
				}

				boolean isValidEmail = EmailValidator.validateEmail(id);
				if (isValidEmail) {
					String jwt = loginService.logIn(id, pwd);
					if (jwt != null && !jwt.equals("")) {

						response.setStatus(ResponseStatus.OK);
						response.setResponse(new JwtAuthenticationResponse(jwt));
						return ResponseEntity.ok(response);
					} else {
						response.setStatus(ResponseStatus.INVALID);
						response.setResponse("Not a valid userId or password");
						return ResponseEntity.ok(response);
					}
				} else {
					response.setStatus(ResponseStatus.ERROR);
					response.setResponse("Not a valid mailId");
					return ResponseEntity.ok(response);
				}
			}
		}
		response.setStatus(ResponseStatus.BAD_REQUEST);
		response.setResponse("Not a valid request");
		return ResponseEntity.ok(response);
	}

	@GetMapping("/fb")
	public void createFacebookAccessToken(@RequestParam("code") String code) {
		facebookService.createFacebookAccessToken(code);
	}

	@GetMapping("/getName")
	public String getNameResponse() {
		String accessToken = "";
		return facebookService.getProfile(accessToken);
	}

	@PostMapping("/resetPassword")
	public ResponseEntity<Response> resetPassword(@RequestBody PostRequestWithOutArray resetRequest) {
		Response response = new Response();
		String requestType = resetRequest.getRequestType();
		if (requestType != null && requestType.equalsIgnoreCase("resetPwd")) {
			Map<String, String> requestParam = resetRequest.getRequestParam();
			String userId = requestParam.get("userId");
			String oldPwd = requestParam.get("oldPwd");
			String newPwd = requestParam.get("newPwd");

			response = loginService.resetPassword(userId, oldPwd, newPwd);
			if (response.getStatus() == ResponseStatus.OK) {
				String messageBody = "Hi,<br><br>";
				messageBody += "Your pasword changed successfully.";
				messageBody += mailService.getMailSignature();
				/*
				 * mailService.sendEmail(userId, messageBody,
				 * "Password changed", true);
				 */
			}
		} else {
			response.setStatus(ResponseStatus.BAD_REQUEST);
			response.setResponse("request is not valid");
		}
		return ResponseEntity.ok(response);

	}

	@GetMapping("/forgetPasswordOTP")
	public ResponseEntity<Response> getForgetPasswordOTP(@RequestParam("user") String userId) {
		Response response = new Response();
		try {
			response = loginService.forgetPasswordOTP(userId);
			if (response.getStatus().equals(ResponseStatus.OK)) {
				String OTP = (String) response.getResponse();

				String messageBody = "This is system genrated mail<br><br>";
				messageBody += "<b>OTP:</b>&nbsp<i>" + OTP + "</i><br><br>";
				messageBody += "This OTP will expire in 3 minutes";
				messageBody += mailService.getMailSignature();

				/*
				 * mailService.sendEmail(userId, messageBody,
				 * "Forget Password OTP", true);
				 */
				response.setResponse("OTP send successfully to user mail Id.");
			}

		} catch (Exception e) {
			response.setStatus(ResponseStatus.ERROR);
			response.setResponse("Something went wrong.");
		}
		return ResponseEntity.ok(response);
	}

	@PostMapping("/changeForgetPassword")
	public ResponseEntity<Response> forgetPassword(@RequestBody PostRequestWithOutArray forgetPasswordRequest) {
		Response response = new Response();
		String requestType = forgetPasswordRequest.getRequestType();
		if (requestType != null && requestType.equalsIgnoreCase("forgetPwd")) {
			Map<String, String> requestParam = forgetPasswordRequest.getRequestParam();
			String userId = requestParam.get("userId");
			String pwd = requestParam.get("pwd");
			String accessKey = requestParam.get("accessKey");

			Login user = logInRepositry.findOne(userId);

			if (user.getAccessKey() != null && user.getAccessKey().equals(accessKey)) {
				response = loginService.changePassword(userId, pwd);
			} else {
				response.setResponse("Access Key is Invalid or used one.");
				response.setStatus(ResponseStatus.INVALID);
			}

			if (response.getStatus() == ResponseStatus.OK) {
				String messageBody = "Hi,<br><br>";
				messageBody += "Your pasword changed successfully.You can login with your new password";
				messageBody += mailService.getMailSignature();
				/*
				 * mailService.sendEmail(userId, messageBody,
				 * "Password changed", true);
				 */
			}
		} else {
			response.setStatus(ResponseStatus.BAD_REQUEST);
			response.setResponse("request is not valid");
		}
		return ResponseEntity.ok(response);
	}

	@PostMapping("/verifyOTP")
	public ResponseEntity<Response> verifyOTP(@RequestBody PostRequestWithOutArray forgetPasswordRequest) {
		Response response = new Response();
		String requestType = forgetPasswordRequest.getRequestType();
		if (requestType != null && requestType.equalsIgnoreCase("verifyOTP")) {
			Map<String, String> requestParam = forgetPasswordRequest.getRequestParam();
			String otp = requestParam.get("OTP");
			String userId = requestParam.get("userId");

			response = loginService.verifyOTP(otp, userId);

		} else {
			response.setStatus(ResponseStatus.BAD_REQUEST);
			response.setResponse("request is not valid");
		}
		return ResponseEntity.ok(response);
	}

	@GetMapping("/myProfile")
	@PreAuthorize("isAuthenticated()")
	public ResponseEntity<Response> getUserDetails(@CurrentUser UserPrincipal currentUser) {
		Response response = new Response();
		UserDetailsImpl userDetails = null;
		try {
			userDetails = userServices.getUserDetails(currentUser.getUsername());
			response.setStatus(ResponseStatus.OK);
			response.setResponse(userDetails);
		} catch (UsernameNotFoundException e) {
			response.setStatus(ResponseStatus.NO_DATA_FOUND);
			response.setResponse("User Name not found");
		}

		return ResponseEntity.ok(response);
	}

	@Scheduled(cron = "0 0/10 * * * ?")
	public void clearOldOTRecords() {
		// Created CRON job to delete the OTP records in every 10 minutes
		logger.info("OTP clean up Runs at:" + new Date());
		loginService.clearOldOtp();
	}
}
