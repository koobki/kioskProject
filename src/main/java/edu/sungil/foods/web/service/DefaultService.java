package edu.sungil.foods.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.sungil.foods.web.domain.AdminMapper;
import edu.sungil.foods.web.domain.DefaultMapper;
import edu.sungil.foods.web.domain.dto.MenuInfo;
import edu.sungil.foods.web.domain.dto.OrderInfo;
import edu.sungil.foods.web.domain.dto.UserInfo;

@Service
@Transactional
public class DefaultService {
	 @Autowired
	 DefaultMapper defaultMapper;
	 @Autowired
	 AdminMapper adminMapper;
	 
	 public String getName() {
	        return defaultMapper.selectName();
	        }

	public UserInfo getUserInfo(Long userNo) {
		return defaultMapper.selectUserInfo(userNo);
	}
	
	public void addUserInfo(UserInfo userInfo) {
		 defaultMapper.addUserInfo(userInfo);
	}

	public void order(OrderInfo orderInfo) {
		MenuInfo menuInfo = new MenuInfo();
		menuInfo.setMenuNo(orderInfo.getMenuNo());
		List<MenuInfo> menuInfoList = adminMapper.selectMenuList(menuInfo);
		// TODO Auto-generated method stub
		
	}

}
