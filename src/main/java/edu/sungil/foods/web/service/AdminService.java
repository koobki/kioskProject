package edu.sungil.foods.web.service;

import java.io.IOException;
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
	 
	public void addMenu(MenuInfo menuInfo) {
		if(menuInfo.getMenuNo() == null) {
			String fileNm = String.valueOf(System.currentTimeMillis())
					+ "." + StringUtils.getFilenameExtension(menuInfo.getFileInfo().getOriginalFilename()); 
					
					
					try {
						Files.copy(menuInfo.getFileInfo().getInputStream(), root.resolve(fileNm));
					} catch (IOException e) {
						e.printStackTrace();
					}
					
					menuInfo.setMenuImgNm(fileNm);
					adminMapper.insertMenuInfo(menuInfo);
		} else {
			adminMapper.updateMenuInfo(menuInfo);
		}
		
	}

	public List<MenuInfo> getMenuList(MenuInfo menuInfo) {
		// TODO Auto-generated method stub
		return adminMapper.selectMenuList(menuInfo);
	}
	 
	 
}
