package edu.sungil.foods.web.domain;

import org.apache.ibatis.annotations.Mapper;

import edu.sungil.foods.web.domain.dto.MenuInfo;
import edu.sungil.foods.web.domain.dto.UserInfo;

@Mapper
public interface AdminMapper {
	String selectName();

	void insertMenuInfo(MenuInfo menuInfo);
	
}
