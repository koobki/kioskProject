package edu.sungil.foods.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

import edu.sungil.foods.web.domain.dto.MenuInfo;
import edu.sungil.foods.web.service.AdminService;

/**
 * @author koobk
 */
@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value="",method=RequestMethod.GET)
	public RedirectView defaultView() {
		return new RedirectView("admin/orderList");
	}
	
	@RequestMapping(value="orderList",method=RequestMethod.GET)
	public void adminIndex() {
	}
	
	@RequestMapping(value="menuList",method=RequestMethod.GET)
	public void menuList() {
	}
	
	@RequestMapping(value="menu/add",method=RequestMethod.POST)
	@ResponseBody
	public void addMenu(MenuInfo menuInfo) {
		adminService.addMenu(menuInfo);
	}
	
	@RequestMapping(value="/menu",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<List<MenuInfo>> getMenuList(MenuInfo menuInfo) {
		return new ResponseEntity<List<MenuInfo>>(adminService.getMenuList(menuInfo), HttpStatus.OK);
	}
	
	
	
}
