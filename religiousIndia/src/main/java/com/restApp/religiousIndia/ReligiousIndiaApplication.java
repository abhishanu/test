package com.restApp.religiousIndia;

import org.apache.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class ReligiousIndiaApplication extends SpringBootServletInitializer {
	private static Logger logger = Logger.getLogger(ReligiousIndiaApplication.class);

	public static void main(String[] args) {
		logger.info("Application Started......");
		SpringApplication.run(ReligiousIndiaApplication.class, args);
	}
}
