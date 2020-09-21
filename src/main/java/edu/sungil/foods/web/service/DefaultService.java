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
		//1. 주문 상품명 가격 조희
		MenuInfo menuInfo = new MenuInfo();
		menuInfo.setMenuNo(orderInfo.getMenuNo());
		List<MenuInfo> menuInfoList = adminMapper.selectMenuList(menuInfo);
		
		//1-1. 주문가능재고 확인(재고보다 주문수량이 많으면 에러)
		
		//2. 주문테이블에 인서트
		
		//2. 메뉴 재고 업뎃
		
	}
	
	

}
