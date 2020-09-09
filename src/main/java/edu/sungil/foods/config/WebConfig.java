package edu.sungil.foods.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	/** 
	 * Add Index Page
	 */
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {

        ViewControllerRegistration r = registry.addViewController("admin/");
        r.setViewName("admin/orderList");
        //setting status code
        r.setStatusCode(HttpStatus.GONE);
	}
}