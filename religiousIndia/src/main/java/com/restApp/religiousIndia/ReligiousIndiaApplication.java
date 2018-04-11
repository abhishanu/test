package com.restApp.religiousIndia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class ReligiousIndiaApplication extends SpringBootServletInitializer {
	/*
	 * @Override protected SpringApplicationBuilder
	 * configure(SpringApplicationBuilder application) { return
	 * application.sources(ReligiousIndiaApplication.class); }
	 */

	public static void main(String[] args) {
		SpringApplication.run(ReligiousIndiaApplication.class, args);
	}
}
