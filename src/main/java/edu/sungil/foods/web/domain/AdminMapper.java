package edu.sungil.foods.web.domain;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.sungil.foods.web.domain.dto.MenuInfo;

@Mapper
public interface AdminMapper {

	void insertMenuInfo(MenuInfo menuInfo);

	List<MenuInfo> selectMenuList(MenuInfo menuInfo);
	
}
