package edu.sungil.foods.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

/**
 * @author koobk
 */
@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
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
}
