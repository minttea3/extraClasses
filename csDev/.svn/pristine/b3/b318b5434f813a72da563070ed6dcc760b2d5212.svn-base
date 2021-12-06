package com.cs.study.signup.service;

import com.cs.study.signup.mapper.SignupMapperLmg;
import com.cs.study.signup.vo.SignupVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SignupServiceLmg {
	public final SignupMapperLmg signupMapperLmg;

	public SignupServiceLmg(SignupMapperLmg signupMapperLmg) {
		this.signupMapperLmg = signupMapperLmg;
	}

	public Boolean insertSignup(SignupVO signupVO) {

		if (!signupVO.getUserPw().equals(signupVO.getUserPwChk())) {
			
			return true;
		}
		
		signupVO.setPhoneNumber(signupVO.getPhoneNumber1()+"-"+signupVO.getPhoneNumber2()+"-"+signupVO.getPhoneNumber3());
		
		if(signupVO.getTermsBuyYn() == null) {
			signupVO.setTermsBuyYn("N");
		}
		if(signupVO.getTermsInfoYn() == null) {
			signupVO.setTermsInfoYn("N");
		}
		if(signupVO.getTermsSellYn() == null) {
			signupVO.setTermsSellYn("N");
		}
		
		signupMapperLmg.insertSignup(signupVO);
		
		return false;
	}


	public List<SignupVO> singuplist(SignupVO signupVO) {
		List<SignupVO> listsignup = signupMapperLmg.signuplist(signupVO);
		
		for (int i = 0; i < listsignup.size(); i++) {
			SignupVO loopVO = listsignup.get(i);
			
			String[] arrPN = loopVO.getPhoneNumber().split("-");
			
			loopVO.setPhoneNumber1(arrPN[0]);
			loopVO.setPhoneNumber2(arrPN[1]);
			loopVO.setPhoneNumber3(arrPN[2]);
			
			listsignup.set(i, loopVO);
 		}
	
		return listsignup;
	}
	
	public int updatelist(SignupVO signupVO) {
		
		signupVO.setPhoneNumber(signupVO.getPhoneNumber1()+"-"+signupVO.getPhoneNumber2()+"-"+signupVO.getPhoneNumber3());
		
		if(signupVO.getTermsBuyYn() == null) {
			signupVO.setTermsBuyYn("N");
		}
		if(signupVO.getTermsInfoYn() == null) {
			signupVO.setTermsInfoYn("N");
		}
		if(signupVO.getTermsSellYn() == null) {
			signupVO.setTermsSellYn("N");
		}
		
		return signupMapperLmg.updatelist(signupVO);
		
	}
		public int deletelist(SignupVO signupVO) {
		
		return signupMapperLmg.deletelist(signupVO);
	}
	
	
}