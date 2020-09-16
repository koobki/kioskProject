package edu.sungil.foods.web.domain.dto;

import org.springframework.web.multipart.MultipartFile;

public class MenuInfo {
	private Long menuNo;
	private String menuNm;
	private Long menuPc;
	private String menuDsc;
	private Long menuStock;
	private String menuDispYn;
	private String menuImgNm;
	private MultipartFile fileInfo;
	
	
	public Long getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(Long menuNo) {
		this.menuNo = menuNo;
	}
	public String getMenuNm() {
		return menuNm;
	}
	public void setMenuNm(String menuNm) {
		this.menuNm = menuNm;
	}
	public Long getMenuPc() {
		return menuPc;
	}
	public void setMenuPc(Long menuPc) {
		this.menuPc = menuPc;
	}
	public String getMenuDsc() {
		return menuDsc;
	}
	public void setMenuDsc(String menuDsc) {
		this.menuDsc = menuDsc;
	}
	public Long getMenuStock() {
		return menuStock;
	}
	public void setMenuStock(Long menuStock) {
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
