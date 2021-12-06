package com.cs.study.signup.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cs.study.commcode.service.CommCodeService;
import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.radioselect.service.DeptService;
import com.cs.study.signup.service.SignupKyjService;
import com.cs.study.signup.vo.SignupVO;



@Controller
public class SignupControllerKyj {

    private final DeptService deptService;
    private final SignupKyjService signupKyjService;
    private final CommCodeService commCodeService;
    

    public SignupControllerKyj(DeptService deptService, SignupKyjService signupKyjService, CommCodeService commCodeService) {
        this.deptService = deptService;
        this.signupKyjService = signupKyjService;
        this.commCodeService = commCodeService;
    }

    @GetMapping("/signup/signupKyj")
    public String signupKcs(Model model, SignupVO signupVO) {

    	// 비밀번호 질문
    	CommCodeDtlVO ccd = new CommCodeDtlVO();
    	ccd.setMstCd("M0002");
    	List<CommCodeDtlVO> selectPwQuestionList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectPwQuestionList",selectPwQuestionList);
//    	System.out.println("--------------");
//    	System.out.println("selectCommCodeDtlList"+selectCommCodeDtlList);
//    	System.out.println("--------------");
    	// 전화번호 앞자리
    	ccd = new CommCodeDtlVO();
    	ccd.setMstCd("M0001");
    	List<CommCodeDtlVO> selectPhoneNumberList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectPhoneNumberList",selectPhoneNumberList);
    	
    	// 성별
    	ccd =new CommCodeDtlVO();
    	ccd.setMstCd("M0003");
    	List<CommCodeDtlVO> selectGenderList = commCodeService.selectCommCodeDtlList(ccd);
    	
    	model.addAttribute("selectGenderList",selectGenderList);
    	
    	// 약관
    	ccd.setMstCd("M0004");
    	List<CommCodeDtlVO> selectTermsList = commCodeService.selectCommCodeDtlList(ccd);
    	if(selectTermsList.size()>0) {
    		model.addAttribute("selectTerms",selectTermsList.get(0).getDtlNm());
    	}
        return "signup/signupKyj";
    }

    @PostMapping("/signup/insertSignupKyj")
    public String insertSignup(Model model, SignupVO signupVO) {
    	int count = signupKyjService.insertSignup(signupVO);
    	String url = "signup/signupKyj";
    	if(count > 0) {//정상일 경우
    		System.out.println("---------------");
    		System.out.println("정상");
    		System.out.println("---------------");
    		
    		return "/signup/signupListkyj";
    		
    	}else if(count == -1){ // 비번 실패
    		
        	
    		model.addAttribute("signupVO",signupVO);
    		model.addAttribute("msg","비밀번호를 다시 입력하세요.");
    		url= "signup/signupKyj";
    	}else if(count == -2) { // 전화 실패
    		model.addAttribute("signupVO",signupVO);
    		model.addAttribute("msg","전화번호를 다시 입력하세요.");
    		
    		url= "signup/signupKyj";
    	}
    	if(count < 0) {// 실패일 경우
    		System.out.println("---------------");
    		System.out.println("실패");
    		System.out.println("---------------");
    		
    		// 비밀번호 질문
        	CommCodeDtlVO ccd = new CommCodeDtlVO();
        	ccd.setMstCd("M0002");
        	List<CommCodeDtlVO> selectPwQuestionList = commCodeService.selectCommCodeDtlList(ccd);
        	model.addAttribute("selectPwQuestionList",selectPwQuestionList);

        	// 전화번호 앞자리
        	ccd = new CommCodeDtlVO();
        	ccd.setMstCd("M0001");
        	List<CommCodeDtlVO> selectPhoneNumberList = commCodeService.selectCommCodeDtlList(ccd);
        	model.addAttribute("selectPhoneNumberList",selectPhoneNumberList);
        	
        	// 성별
        	ccd =new CommCodeDtlVO();
        	ccd.setMstCd("M0003");
        	List<CommCodeDtlVO> selectGenderList = commCodeService.selectCommCodeDtlList(ccd);
        	
        	model.addAttribute("selectGenderList",selectGenderList);
        	
        	// 약관
        	ccd.setMstCd("M0004");
        	List<CommCodeDtlVO> selectTermsList = commCodeService.selectCommCodeDtlList(ccd);
        	if(selectTermsList.size()>0) {
        		model.addAttribute("selectTerms",selectTermsList.get(0).getDtlNm());
        	}
    	}
    	
    	return url;
    }
    
    @GetMapping("/signup/signupListkyj")
    public String signupListKyj(Model model, SignupVO signupVO) {
    // 조회 페이지
    	List<SignupVO> selectSignupKyj =signupKyjService.selectSignupKyj(signupVO);
    	model.addAttribute("selectSignupKyj",selectSignupKyj);
    	model.addAttribute("signupVO2",signupVO);
    	return "signup/signupListkyj";
    }
    
  
}
