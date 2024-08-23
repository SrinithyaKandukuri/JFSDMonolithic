package com.klef.jfsd.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.JpaRepository;

@SpringBootApplication
@ComponentScan(basePackages = ("com.klef.jfsd.springboot"))
public class OnlineBookStoreProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineBookStoreProjectApplication.class, args);
		System.out.println("Online Book Store SDP-4...!!!");
	}

}
