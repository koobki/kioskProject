package edu.sungil.foods.web.domain.dto;

import org.springframework.web.multipart.MultipartFile;

public class MenuInfo {
	private int menuNo;
	private String menuNm;
	private int menuPc;
	private String menuDsc;
	private int menuStock;
	private String menuDispYn;
	private String menuImgNm;
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
	public String getMenuDsc() {
		return menuDsc;
	}
	public void setMenuDsc(String menuDsc) {
		this.menuDsc = menuDsc;
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
	public String getMenuImgNm() {
		return menuImgNm;
	}
	public void setMenuImgNm(String menuImgNm) {
		this.menuImgNm = menuImgNm;
	}
	public MultipartFile getFileInfo() {
		return fileInfo;
	}
	public void setFileInfo(MultipartFile fileInfo) {
		this.fileInfo = fileInfo;
	}
	
	
}
