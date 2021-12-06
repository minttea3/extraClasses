package com.cs.study.signup.service;

import java.util.List;
import java.util.regex.Pattern;

import org.springframework.stereotype.Service;

import com.cs.study.signup.mapper.SignupKyjMapper;
import com.cs.study.signup.vo.SignupVO;


@Service
public class SignupKyjService {
    public final SignupKyjMapper SignupKyjMapper;

    public SignupKyjService(SignupKyjMapper SignupKyjMapper) {
        this.SignupKyjMapper = SignupKyjMapper;
    }

    public int insertSignup(SignupVO signupVO){
    	

    	String userPw = signupVO.getUserPw();
    	String userPwChk = signupVO.getUserPwChk();
    	System.out.println("--------");
    	System.out.println("userpw::"+userPw);
    	System.out.println("userPwChk::"+userPwChk);
    	System.out.println("--------");
    	
    	if(!userPw.equals(userPwChk)) { 
    		
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
    	return SignupKyjMapper.insertSignupKyj(signupVO);

    }
    //숫자 검사기
    public boolean inNumeric(String str) {
    	return Pattern.matches("^[0-9]*$", str);
    }
    

    
    
 // 조회
    public List<SignupVO> selectSignupKyj(SignupVO signupVO){
    	//회원 리스트 
		List<SignupVO> signupList = SignupKyjMapper.selectSignupKyj(signupVO);
		SignupVO list= null;
		// 1. 전화번호 값을 가져온다.(회원리스트를 포문을 돌리고 그중에 전화번호 값만 가져온다.)
		for (int i = 0; i < signupList.size(); i++) {
			list=signupList.get(i);
			
			String pn = signupList.get(i).getPhoneNumber();
			System.out.println("=*************************8==");
			System.out.println("*****::"+signupList.get(i).getPhoneNumber());
			System.out.println("==========================================");

			// 2. 전화번호 값을 잘라서 1,2,3 에 담는다
			String[] arr =pn.split("-");
			list.setPhoneNumber1( arr[0] );
			list.setPhoneNumber2( arr[1] );
			list.setPhoneNumber3( arr[2] );

			
			// 3. 자른 전화번호 값을 signupList 에 담는다.
			signupList.set(i, list);
		}
    	return signupList;
    }
    
    public int insertSignups(SignupVO signupVO) {
			signupVO.setPhoneNumber(signupVO.getPhoneNumber1() +"-"+signupVO.getPhoneNumber2() + "-"+ signupVO.getPhoneNumber3()); 
  		
  		// 동의여부 체크박스 값이 null 일때 N으로 저장		  		
  		if(signupVO.getTermsBuyYn() == null) {
  			signupVO.setTermsBuyYn("N");
  		}
  		if(signupVO.getTermsInfoYn() == null) {
  			signupVO.setTermsInfoYn("N");
  		}
  		if(signupVO.getTermsSellYn() == null) {
  			signupVO.setTermsSellYn("N");
  		}
  		
			return SignupKyjMapper.insertSignups(signupVO);
		}


    
    // 수정
    public int listSignUpdate(SignupVO signupVO) {

    	String phoneNum1 = signupVO.getPhoneNumber1();
    	String phoneNum2 = signupVO.getPhoneNumber2();
    	String phoneNum3 = signupVO.getPhoneNumber3();
    	signupVO.setPhoneNumber(phoneNum1+"-"+phoneNum2+"-"+phoneNum3);
    	System.out.println(signupVO.getPhoneNumber());
    	

    	String termsInfoYn = signupVO.getTermsInfoYn();
    	if(termsInfoYn == null) {
    		signupVO.setTermsInfoYn("N");
    	}

    	String termsBuyYn = signupVO.getTermsBuyYn();
    	if(termsBuyYn == null) {
    		signupVO.setTermsBuyYn("N");
    	}
    	

    	String termsSellYn = signupVO.getTermsSellYn();
    	if(termsSellYn == null) {
    		signupVO.setTermsSellYn("N");
    	}
    	
    	return SignupKyjMapper.listSignUpdate(signupVO);
    }
    
    public int listdeleteSignup(SignupVO signupVO) {
			
			return SignupKyjMapper.listdeleteSignup(signupVO);
		}

    
}