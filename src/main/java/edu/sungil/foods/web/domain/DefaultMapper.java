package edu.sungil.foods.web.domain;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.sungil.foods.web.domain.dto.MenuInfo;
import edu.sungil.foods.web.domain.dto.OrderInfo;
import edu.sungil.foods.web.domain.dto.UserInfo;

@Mapper
public interface DefaultMapper {
	String selectName();

	UserInfo selectUserInfo(Long userNo);
	
	void addUserInfo(UserInfo userInfo);

	void insertOrd(OrderInfo orderInfo);

	void updateMenuStock(OrderInfo orderInfo);

}
