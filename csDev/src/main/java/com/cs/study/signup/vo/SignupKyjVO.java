package com.cs.study.signup.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("signupKyjVO")
public class SignupKyjVO {
	
	private int seq;
	private String userId;
	private String userPw;
	private String userPw2;
	private String pwQuestion;
	private String pwAnswer;
	private String nickname;
	private String phoneNumber;
	private String phoneNumber1;
	private String phoneNumber2;
	private String phoneNumber3;
	private String gender;
	private String address1;
	private String address2;
	private String termsInfoYn;
	private String termsBuyYn;
	private String termsSellYn;
    
    
    
   
    
    
}

