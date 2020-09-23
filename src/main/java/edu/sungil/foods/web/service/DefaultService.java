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

	public void order(OrderInfo orderInfo) throws Exception {
		//1. 주문상품 명, 가격 조회
		MenuInfo menuInfo = new MenuInfo();
		menuInfo.setMenuNo(orderInfo.getMenuNo());
		List<MenuInfo> menuInfoList = adminMapper.selectMenuList(menuInfo);
		
		orderInfo.setMenuNm(menuInfoList.get(0).getMenuNm());
		Long ordQty = orderInfo.getOrdQty();
		Long menuPc =  menuInfoList.get(0).getMenuPc();
		Long ordAmt = ordQty * menuPc;
		orderInfo.setOrdAmt(ordAmt);
		orderInfo.setOrdStat("결제완료");
		//1-1 주문가능재고 확인(재고보다 주문수량이 많으면 에러)
		Long menuStock = menuInfoList.get(0).getMenuStock();
		if(ordQty>menuStock) {
			throw new Exception("재고수량보다 주문수량이 더 많으므로 주문을 할 수 없습니다");
		}
		
		//2. 주문테이블에 인서트
		defaultMapper.insertord(orderInfo);
		
		//3. 메뉴 재고 업데이트
		defaultMapper.updateord(orderInfo);
		
		
	}

}
