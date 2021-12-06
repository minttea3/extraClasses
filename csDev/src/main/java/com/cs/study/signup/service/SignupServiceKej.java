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
   
    // ************* 차장님이 서비스에 작성하신  부분 ******************
    // 조회
       public List<SignupVO> selectSignupKej(SignupVO signupVO){
         List<SignupVO> signupList = signupMapperKej.selectSignupKej(signupVO);
         // 전화번호를 분리한다
         // 1. Loop를 돌려서 phoneNumber 를 가지고온다
         for (int i = 0; i < signupList.size(); i++) {
            SignupVO loopVO = signupList.get(i);
            // 2. phoneNumber1,2,3에 '-'구분된 데이터를 각각 나누어 담는다
            String[] arrPN = loopVO.getPhoneNumber().split("-");
            loopVO.setPhoneNumber1( arrPN[0] );
            loopVO.setPhoneNumber2( arrPN[1] );
            loopVO.setPhoneNumber3( arrPN[2] );
            // 3. 담은 데이터를 다시 List에 담아준다
            signupList.set(i, loopVO);
         }

         for (int i = 0; i < signupList.size(); i++) {
            SignupVO loopVO = signupList.get(i);
            System.out.println("pn1 :: " + loopVO.getPhoneNumber1());
            System.out.println("pn2 :: " + loopVO.getPhoneNumber2());
            System.out.println("pn3 :: " + loopVO.getPhoneNumber3());
            System.out.println("=================================");
         }

          return signupList;
       }
    
       // ************************************************************
       
    // 조회
    public List<SignupVO> selectSignupKej2(SignupVO signupVO){ 
    	//회원 리스트 
		List<SignupVO> signupList = signupMapperKej.selectSignupKej(signupVO);
		SignupVO list= null;
		// 1. 전화번호 값을 가져온다.(회원리스트를 포문을 돌리고 그중에 전화번호 값만 가져온다.)
		for (int i = 0; i < signupList.size(); i++) {
			list=signupList.get(i);
			
			String pn = signupList.get(i).getPhoneNumber();
//			System.out.println("=****************************************");
//			System.out.println("*****::"+signupList.get(i).getPhoneNumber());
//			System.out.println("==========================================");

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
    
    // 수정
    public int updateSignupKej(SignupVO signupVO) {
    	// 핸드폰 번호를 합쳐서 담는당!
    	String phoneNum1 = signupVO.getPhoneNumber1();
    	//System.out.println("1111"+phoneNum1);
    	String phoneNum2 = signupVO.getPhoneNumber2();
    	String phoneNum3 = signupVO.getPhoneNumber3();
    	signupVO.setPhoneNumber(phoneNum1+"-"+phoneNum2+"-"+phoneNum3);
    	System.out.println(signupVO.getPhoneNumber());
    	
    	// 체크박스 체크가 안 될 경우 N으로 넣어준다.
    	// 1. 개인정보 동의
    	String termsInfoYn = signupVO.getTermsInfoYn();
    	if(termsInfoYn == null) {
    		signupVO.setTermsInfoYn("N");
    	}
    	// 2. 구매약관 동의
    	String termsBuyYn = signupVO.getTermsBuyYn();
    	if(termsBuyYn == null) {
    		signupVO.setTermsBuyYn("N");
    	}
    	
    	// 3. 판매약관 동의
    	String termsSellYn = signupVO.getTermsSellYn();
    	if(termsSellYn == null) {
    		signupVO.setTermsSellYn("N");
    	}
    	
    	return signupMapperKej.updateSignupKej(signupVO);
    }
    
    public int deleteSignupKej(SignupVO signupVO) {
    	return signupMapperKej.deleteSignupKej(signupVO);
    }
    
    public int saveSignupKej(SignupVO signupVO) { // 등록 버튼 클릭시 insert 쿼리
    	
    	// 전화번호 1,2,3 를 가져오기
    	String phoneNum1 = signupVO.getPhoneNumber1();
    	String phoneNum2 = signupVO.getPhoneNumber2();
    	String phoneNum3 = signupVO.getPhoneNumber3();
    	
    	// 전화 번호 2,3 이 숫자인지 검사하여 값을 담는다.
    	boolean num2 = inNumeric(phoneNum2);
    	boolean num3 = inNumeric(phoneNum3);
    	
    	if(!num2) { // 폰넘버2가 숫자가 아닐경우 다시 해야하므로 값 초기화
    		signupVO.setPhoneNumber2("");
    		return -2;
    	}else { // 숫자 일 경우
    		if(phoneNum2.length() == 3 || phoneNum2.length() == 4){//자리수가 3,4 자리 일경우는 넘어가고
    			
    		}else{//자리수가 3,4 자리 아니면 다시 해야함
    			signupVO.setPhoneNumber2("");
    			return -2;
    		}
    	}
    	
    	if(!num3) { // 폰넘버3이 숫자가 아닐경우 다시 해야함
    		signupVO.setPhoneNumber3("");
    		return -2;
    	}else { // 숫자 일 경우
    		if(phoneNum3.length() == 4){//자리수가 4자리 일경우는 넘어가고
    			
    		}else{//자리수가 4 자리 아니면 다시 해야함
    			signupVO.setPhoneNumber3("");
    			return -2;
    		}
    	}
    	// 전화번호 합치기
    	signupVO.setPhoneNumber(phoneNum1+"-"+phoneNum2+"-"+phoneNum3);
    	
    	
    	// 동의여부 체크 박스 널로 들어올 경우 N 처리
    	if(signupVO.getTermsInfoYn()== null) {
    		signupVO.setTermsInfoYn("N");
    	}
    	if(signupVO.getTermsBuyYn()==null) {
    		signupVO.setTermsBuyYn("N");
    	}
    	if(signupVO.getTermsSellYn()==null) {
    		signupVO.setTermsSellYn("N");
    	}
    	
    	return signupMapperKej.insertSignupKej(signupVO);
    }
    public int insertOrSaveSignupKej(SignupVO signupVO) {
    	if(signupVO.getSeq()==0) { //seq는 null 이라면 insert
    		System.out.println("seq가 널이야");
    		// 전화번호 1,2,3 를 가져오기
        	String phoneNum1 = signupVO.getPhoneNumber1();
        	String phoneNum2 = signupVO.getPhoneNumber2();
        	String phoneNum3 = signupVO.getPhoneNumber3();
        	
        	// 전화 번호 2,3 이 숫자인지 검사하여 값을 담는다.
        	boolean num2 = inNumeric(phoneNum2);
        	boolean num3 = inNumeric(phoneNum3);
        	
        	if(!num2) { // 폰넘버2가 숫자가 아닐경우 다시 해야하므로 값 초기화
        		signupVO.setPhoneNumber2("");
        		return -2;
        	}else { // 숫자 일 경우
        		if(phoneNum2.length() == 3 || phoneNum2.length() == 4){//자리수가 3,4 자리 일경우는 넘어가고
        			
        		}else{//자리수가 3,4 자리 아니면 다시 해야함
        			signupVO.setPhoneNumber2("");
        			return -2;
        		}
        	}
        	
        	if(!num3) { // 폰넘버3이 숫자가 아닐경우 다시 해야함
        		signupVO.setPhoneNumber3("");
        		return -2;
        	}else { // 숫자 일 경우
        		if(phoneNum3.length() == 4){//자리수가 4자리 일경우는 넘어가고
        			
        		}else{//자리수가 4 자리 아니면 다시 해야함
        			signupVO.setPhoneNumber3("");
        			return -2;
        		}
        	}
        	// 전화번호 합치기
        	signupVO.setPhoneNumber(phoneNum1+"-"+phoneNum2+"-"+phoneNum3);
        	
        	
        	// 동의여부 체크 박스 널로 들어올 경우 N 처리
        	if(signupVO.getTermsInfoYn()== null) {
        		signupVO.setTermsInfoYn("N");
        	}
        	if(signupVO.getTermsBuyYn()==null) {
        		signupVO.setTermsBuyYn("N");
        	}
        	if(signupVO.getTermsSellYn()==null) {
        		signupVO.setTermsSellYn("N");
        	}
    		return  signupMapperKej.insertSignupKej(signupVO);
    	}
    	if(signupVO.getSeq()>0) { //seq 존재하면 update
    		System.out.println("seq가 있어!");
    		// 전화번호 1,2,3 를 가져오기
        	String phoneNum1 = signupVO.getPhoneNumber1();
        	String phoneNum2 = signupVO.getPhoneNumber2();
        	String phoneNum3 = signupVO.getPhoneNumber3();
        	
        	// 전화 번호 2,3 이 숫자인지 검사하여 값을 담는다.
        	boolean num2 = inNumeric(phoneNum2);
        	boolean num3 = inNumeric(phoneNum3);
        	
        	if(!num2) { // 폰넘버2가 숫자가 아닐경우 다시 해야하므로 값 초기화
        		signupVO.setPhoneNumber2("");
        		return -2;
        	}else { // 숫자 일 경우
        		if(phoneNum2.length() == 3 || phoneNum2.length() == 4){//자리수가 3,4 자리 일경우는 넘어가고
        			
        		}else{//자리수가 3,4 자리 아니면 다시 해야함
        			signupVO.setPhoneNumber2("");
        			return -2;
        		}
        	}
        	
        	if(!num3) { // 폰넘버3이 숫자가 아닐경우 다시 해야함
        		signupVO.setPhoneNumber3("");
        		return -2;
        	}else { // 숫자 일 경우
        		if(phoneNum3.length() == 4){//자리수가 4자리 일경우는 넘어가고
        			
        		}else{//자리수가 4 자리 아니면 다시 해야함
        			signupVO.setPhoneNumber3("");
        			return -2;
        		}
        	}
        	// 전화번호 합치기
        	signupVO.setPhoneNumber(phoneNum1+"-"+phoneNum2+"-"+phoneNum3);
        	
        	
        	// 동의여부 체크 박스 널로 들어올 경우 N 처리
        	if(signupVO.getTermsInfoYn()== null) {
        		signupVO.setTermsInfoYn("N");
        	}
        	if(signupVO.getTermsBuyYn()==null) {
        		signupVO.setTermsBuyYn("N");
        	}
        	if(signupVO.getTermsSellYn()==null) {
        		signupVO.setTermsSellYn("N");
        	}
    		return signupMapperKej.updateSignupKej(signupVO);
    	}
    	return 3;
    }
    	
    	
    
    
}