package com.cs.study.signup.service;

import java.util.List;
import java.util.regex.Pattern;

import org.springframework.stereotype.Service;

import com.cs.study.signup.mapper.SignupMapperKej;
import com.cs.study.signup.vo.SignupVO;

@Service
public class SignupServiceKej {
    public final SignupMapperKej signupMapperKej;

    public SignupServiceKej(SignupMapperKej signupMapperKej) {
        this.signupMapperKej = signupMapperKej;
    }

    public int insertSignup(SignupVO signupVO){
    	
    	//비빌번호 일치 여부
    	String userPw = signupVO.getUserPw();
    	String userPwChk = signupVO.getUserPwChk();
    	System.out.println("--------");
    	System.out.println("userpw::"+userPw);
    	System.out.println("userPwChk::"+userPwChk);
    	System.out.println("--------");
    	
    	if(!userPw.equals(userPwChk)) { // 비밀번호가 틀릴경우
    		//비밀번호 초기화
    		signupVO.setUserPw("");
    		signupVO.setUserPwChk("");
    		return -1;
    	}
    	
    	
    	//전화번호 숫자만 입력받자!
    	String phoneNumber1 = signupVO.getPhoneNumber1();
    	String phoneNumber2 = signupVO.getPhoneNumber2();
    	String phoneNumber3 = signupVO.getPhoneNumber3();
    	
    	//숫자 검사를 하여 값을 담는다.
    	boolean num2 = inNumeric(phoneNumber2);
    	boolean num3 = inNumeric(phoneNumber3);
    	if(!num2) { // 2번째 폰번호 숫자가 아닐경우
    		signupVO.setPhoneNumber2("");
    		return -2;
    	}else {//숫자 일경우
    		if(phoneNumber2.length()==3||phoneNumber2.length()==4) { 
    		}else {//자리수가 3,4 자리 아니면 다시
    			signupVO.setPhoneNumber2("");
    			return -2;
    			
    		}
    	}
    	if(!num3) { // 3번째 폰번호 숫자가 아닐경우
    		signupVO.setPhoneNumber3("");
    		return -2;
    	}else {//숫자일경우
    		//자리수 4자리가 아닐땐 다시 입력해야하므로.. 
    		if(phoneNumber3.length()!=4) { 
    			signupVO.setPhoneNumber3("");
    			return -2;

    		}
    		
    	}
    	
    	
    	// 전화번호 합치기
    	signupVO.setPhoneNumber(phoneNumber1+"-"+phoneNumber2+"-"+phoneNumber3);
    	
    	// 체크박스
    	if(signupVO.getTermsInfoYn()== null) {
    		signupVO.setTermsInfoYn("N");
    	}
    	if(signupVO.getTermsBuyYn()==null) {
    		signupVO.setTermsBuyYn("N");
    	}
    	if(signupVO.getTermsSellYn()==null) {
    		signupVO.setTermsSellYn("N");
    	}
    	
    	
    	
    	// 뭘 추가해볼까?

    	
    	
    	
    	return signupMapperKej.insertSignupKej(signupVO);

    }
    //숫자 검사기
	// *********************오? 메소드 이용? 나이스 1따봉!
    public boolean inNumeric(String str) {
    	return Pattern.matches("^[0-9]*$", str);
    }
    
    
    // 조회
    public List<SignupVO> selectSignupKej(SignupVO signupVO){
    	return signupMapperKej.selectSignupKej(signupVO);
    }
    
}