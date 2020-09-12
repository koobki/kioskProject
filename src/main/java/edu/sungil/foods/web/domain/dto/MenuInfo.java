package edu.sungil.foods.web.domain.dto;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MenuInfo {
	  private Long menuNo;
	  private String menuNm;
	  private int menuPc;
	  private String menuDesc;
	  private int menuStock;
	  private String menuDispYn;
	  private String menuImgNm;
	  private MultipartFile file;
}
