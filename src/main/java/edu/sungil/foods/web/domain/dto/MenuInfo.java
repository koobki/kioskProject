package edu.sungil.foods.web.domain.dto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;


/**
 * @author user
 *
 */
public class MenuInfo {
	private int menuNo;
	private String menuNm;
	private int menuPc;
	private String mneuDesc;
	private int menuStock;
	private String menuDispYn;
	private String menuImNm;
	private MultipartFile fileInfo;
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}
	public String getMenuNm() {
		return menuNm;
	}
	public void setMenuNm(String menuNm) {
		this.menuNm = menuNm;
	}
	public int getMenuPc() {
		return menuPc;
	}
	public void setMenuPc(int menuPc) {
		this.menuPc = menuPc;
	}
	public String getMneuDesc() {
		return mneuDesc;
	}
	public void setMneuDesc(String mneuDesc) {
		this.mneuDesc = mneuDesc;
	}
	public int getMenuStock() {
		return menuStock;
	}
	public void setMenuStock(int menuStock) {
		this.menuStock = menuStock;
	}
	public String getMenuDispYn() {
		return menuDispYn;
	}
	public void setMenuDispYn(String menuDispYn) {
		this.menuDispYn = menuDispYn;
	}
	public String getMenuImNm() {
		return menuImNm;
	}
	public void setMenuImNm(String menuImNm) {
		this.menuImNm = menuImNm;
	}
	public MultipartFile getFileInfo() {
		return fileInfo;
	}
	public void setFileInfo(MultipartFile fileInfo) {
		this.fileInfo = fileInfo;
	}
	


}
