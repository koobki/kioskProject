package edu.sungil.foods.web.domain.dto;

import lombok.Data;

@Data
public class OrderInfo {
	private Long menuNo;
	private int ordQty;
	private Long ordNo;
	private String menuNm;
	private String ordDt;
	private Long ordAmt;
	private String ordStat;
	
}
