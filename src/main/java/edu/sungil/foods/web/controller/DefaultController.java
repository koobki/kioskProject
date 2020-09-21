package edu.sungil.foods.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.sungil.foods.web.domain.dto.MenuInfo;
import edu.sungil.foods.web.domain.dto.OrderInfo;
import edu.sungil.foods.web.domain.dto.UserInfo;
import edu.sungil.foods.web.service.AdminService;
import edu.sungil.foods.web.service.DefaultService;

/**
 * @author koobk
 */
@Controller
public class DefaultController {
	@Autowired
	DefaultService defaultService;
	@Autowired
	AdminService adminService;

	@RequestMapping(value="/userInfo",method=RequestMethod.GET)
	public void getUserInfo() {
	}
	
	@RequestMapping(value="/user", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<UserInfo> getUserInfo(@RequestParam(value = "userNo", required = true)Long userNo) {
		return new ResponseEntity<UserInfo>(defaultService.getUserInfo(userNo), HttpStatus.OK);
	}
	
	@RequestMapping(value="/user/add", method = RequestMethod.POST)
	@ResponseBody
	public void addUserInfo(@RequestParam(value = "userNo", required = true)Long userNo,
			@RequestParam(value = "userNm", required = true)String userNm,
			@RequestParam(value = "userBirthDt", required = true)String userBirthDt) {
		
		UserInfo userInfo =new UserInfo();
		userInfo.setUserNo(userNo);
		userInfo.setUserNm(userNm);
		userInfo.setUserBirthDt(userBirthDt);
		
		defaultService.addUserInfo(userInfo);
	}
	
	@RequestMapping(value="/menuList",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<List<MenuInfo>> getMenuList(MenuInfo menuInfo) {
		return new ResponseEntity<List<MenuInfo>>(adminService.getMenuList(menuInfo), HttpStatus.OK);
	}
	
	@RequestMapping(value="/order", method = RequestMethod.POST)
	@ResponseBody
	public void order(OrderInfo orderInfo) {
		defaultService.order(orderInfo);
		
	}
	
	
}
