package edu.sungil.foods.web.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import edu.sungil.foods.web.domain.AdminMapper;
import edu.sungil.foods.web.domain.dto.MenuInfo;

@Service
@Transactional
public class AdminService {
	
	@Autowired
	AdminMapper adminMapper;
	
	private final Path root = Paths.get("src/main/resources/static/media");

	public void saveMenu(MenuInfo menuInfo) {
		//1. 파일 저장
		String fileNm = String.valueOf(System.currentTimeMillis())+"."+StringUtils.getFilenameExtension(menuInfo.getFile().getOriginalFilename());
		menuInfo.setMenuImgNm(fileNm);
		try {
		      Files.copy(menuInfo.getFile().getInputStream(), this.root.resolve(fileNm));
		    } catch (Exception e) {
		      throw new RuntimeException("Could not store the file. Error: " + e.getMessage());
		    }
		
		//2. db 저장
		adminMapper.insertMenuInfo(menuInfo);
		
	}

	public List<MenuInfo> getMenuList(MenuInfo menuInfo) {
		List<MenuInfo> menuInfoList = adminMapper.selectMenuList(menuInfo);
		return menuInfoList;
	}

}
