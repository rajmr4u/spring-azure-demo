package net.guides.springboot2.azure.demo;

import java.util.Collections;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Springboot2WebappJspApplication {

	public static void main(String[] args) {
		SpringApplication app = new SpringApplication(Springboot2WebappJspApplication.class);
		//app.setDefaultProperties(Collections.singletonMap("server.servlet.context-path", "/azure-demo"));
		app.run(args);
	}
}
