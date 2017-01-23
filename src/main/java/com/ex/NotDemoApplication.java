package com.ex;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan
@EnableAutoConfiguration
@SpringBootApplication
public class NotDemoApplication {

	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(NotDemoApplication.class);
	}

	public static  void main(String[] args) {
		SpringApplication.run(NotDemoApplication.class, args);
	}
}
