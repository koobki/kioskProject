package edu.sungil.foods.web.domain.dto;

import lombok.Data;

@Data
public class UserInfo {
	  Long userNo;
	  String userNm;
	  String userBirthDt;
	  
	  public String toString() {
		  return "userNo = " + this.userNo + ", userNm = " + this.userNm +", userBirthDt = " + this.userBirthDt;
		  
	  }
}
