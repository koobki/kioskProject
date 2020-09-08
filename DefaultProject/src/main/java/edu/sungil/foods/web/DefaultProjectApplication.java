package edu.sungil.foods.web;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages="edu.sungil.foods.web.domain")
public class DefaultProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(DefaultProjectApplication.class, args);
	}

}
