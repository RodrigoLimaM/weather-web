package com.weather;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class WeatherWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(WeatherWebApplication.class, args);
	}

}
