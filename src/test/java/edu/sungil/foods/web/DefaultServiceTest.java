package edu.sungil.foods.web;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import edu.sungil.foods.web.domain.dto.UserInfo;
import edu.sungil.foods.web.service.DefaultService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
public class DefaultServiceTest {
	@Autowired
	DefaultService defaultService;
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Test
	public void getName() {
		String name = defaultService.getName();
		logger.info("name : {}", name);
	}
	
	@Test
	public void getUserInfo() {
		UserInfo userInfo = defaultService.getUserInfo(1L);
		logger.info(userInfo.toString());
	}
}
