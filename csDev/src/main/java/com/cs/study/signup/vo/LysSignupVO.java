package com.cs.study.signup.vo;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("lyssignupVO")
public class LysSignupVO {

	private int seq;
	private String checkTest;
    private String userId;
    private String userPw;
    private String userPwChk;
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
    private String signupTerms;
    private String termsInfoYn;
    private String termsBuyYn;
    private String termsSellYn;
    
    private List<LysSignupVO> listLysSignupVO;

}