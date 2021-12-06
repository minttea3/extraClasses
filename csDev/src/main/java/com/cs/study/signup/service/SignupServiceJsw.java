//����
package com.cs.study.signup.service;



import com.cs.study.signup.mapper.SignupMapperJsw;
import com.cs.study.signup.vo.SignupVO;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;


@Service
public class SignupServiceJsw {
    public final SignupMapperJsw mapper;

    public SignupServiceJsw(SignupMapperJsw mapper) {
        this.mapper = mapper;
    }

    	public boolean insertSignup(SignupVO signupVO){
		   // 비밀번호 일치 체크  
		  	if(!signupVO.getUserPw().equals(signupVO.getUserPwChk())){
			  		//boolean을 사용해 일치 하지 않을 시  리턴 값 true로 주어
			  		//회원가입 처리가 되지 않도록 한다 
		  			return true;
		  	}else {
			  		//폰번호  3개의 값를 합쳐서 넘기기 
			  		//PhoneNumber를 추가하여 생성 한 후 그곳에 담아서 넘긴다 
		  			//핸드폰번호 length는 jsp에서 하자 
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
			  		
			      	mapper.insertSignup(signupVO);	
		      	
		      		return false;      	
			  	}   		
		    }
	   
   
   
   		public List<SignupVO> signupList(SignupVO signupVO){
   			List<SignupVO> list = mapper.signupList(signupVO);
   			//전화번호 분리하기 
   			// loop 돌려서 phoneNumber 가져오기
   			for (int i = 0; i < list.size(); i++) {
   				SignupVO loopVO = list.get(i);
   				// phoneNumber1,2,3 사이에 - 로 구분된 데이터를 나누어 담기
   				String[] arr = loopVO.getPhoneNumber().split("-");
   				loopVO.setPhoneNumber1(arr[0]);
   				loopVO.setPhoneNumber2(arr[1]);
   				loopVO.setPhoneNumber3(arr[2]);
				// 담은 데이터를 다시 list에 담는다.
   				list.set(i, loopVO);
			}
   			 for (int i = 0; i < list.size(); i++) {
				SignupVO loopVO = list.get(i);
			}
   				return list;
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
	  		
   			return mapper.insertSignups(signupVO);
   		}
   		
   		public int updateSignup(SignupVO signupVO) {
	 
   			
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
	  		
	  		
   			return mapper.updateSignup(signupVO);
   					 
   		}
   		
   		public int deleteSignup(SignupVO signupVO) {
   			
   			return mapper.deleteSignup(signupVO);
   		}
   		
   		public int saveSignup(SignupVO signupVO) {
   			
   			if(signupVO.getSeq() == 0 ) {
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
   				mapper.insertSignups(signupVO);
   			}else {
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
   				mapper.updateSignup(signupVO);
   			}
   				
   			 
   			return 0;
   			
   		}
	}
    
