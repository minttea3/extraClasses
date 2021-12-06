package com.cs.study.signup.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cs.study.commcode.service.CommCodeService;
import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.radioselect.service.DeptService;
import com.cs.study.signup.service.SignupService;
import com.cs.study.signup.service.SignupServiceRjh;
import com.cs.study.signup.vo.SignupVO;

@Controller
public class SignupControllerRjh {

    private final DeptService deptService;
    private final SignupServiceRjh signupServiceRjh;
    private final CommCodeService commCodeService;
    

    public SignupControllerRjh(DeptService deptService, SignupServiceRjh signupServiceRjh, CommCodeService commCodeService) {
        this.deptService = deptService;
        this.signupServiceRjh = signupServiceRjh;
        this.commCodeService = commCodeService;
    }

    @GetMapping("/signup/signupRjh")
    public String signupKcs(Model model, SignupVO signupVO) {

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
        return "signup/signupRjh";
    }

    @PostMapping("/signup/insertSignupRjh")
    public String insertSignup(Model model, SignupVO signupVO) {
    	int count = signupServiceRjh.insertSignup(signupVO);
    	String url = "signup/signupRjh";
    	if(count > 0) {//정상일 경우
    		System.out.println("---------------");
    		System.out.println("정상");
    		System.out.println("---------------");
    		model.addAttribute("msg","회원가입을 축하합니다 😀");

    		return "/signup/signupMsgRjh";
    		
    	}else if(count == -1){ // 비번 실패
    		
        	
    		model.addAttribute("signupVO",signupVO);
    		model.addAttribute("msg","비밀번호를 다시 입력하세요.");
    		url= "signup/signupRjh";
    	}else if(count == -2) { // 전화 실패
    		model.addAttribute("signupVO",signupVO);
    		model.addAttribute("msg","전화번호를 다시 입력하세요.");
    		
    		url= "signup/signupRjh";
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
    
    @GetMapping("/signup/signupListRjh")
    public String signupListRjh(Model model, SignupVO signupVO) {
    // 조회 페이지
    	
    	// 회원가입관련 리스트 출력
    	List<SignupVO> selectSignupRjh =signupServiceRjh.selectSignupRjh2(signupVO);
    	model.addAttribute("selectSignupRjh",selectSignupRjh);
    	model.addAttribute("signupVO2",signupVO);
    	
    	// 비밀번호 질문
    	CommCodeDtlVO ccd = new CommCodeDtlVO();
    	ccd.setMstCd("M0002");
    	List<CommCodeDtlVO> selectPwQuestionList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectPwQuestionList",selectPwQuestionList);

    	// 성별
    	ccd =new CommCodeDtlVO();
    	ccd.setMstCd("M0003");
    	List<CommCodeDtlVO> selectGenderList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectGenderList",selectGenderList);
    	
    	// 전화번호 앞자리
    	ccd = new CommCodeDtlVO();
    	ccd.setMstCd("M0001");
    	List<CommCodeDtlVO> selectPhoneNumberList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectPhoneNumberList",selectPhoneNumberList);
    	
    	// 약관 체크
    	
//    	
//    	List<SignupVO> listSu = signupVO.getListSignupVO();
//    	for(int i = 0;i<listSu.size();i++) {
//    		SignupVO listSub = listSu.get(i);
//    		System.out.println("------------------------");
//    		System.out.println(listSub+" ");
//    		System.out.println("------------------------");
//    	}
//    	
    	
    	
    	return "signup/signupListRjh";
    }
    
    @PostMapping("/signup/signupListRjhUpdate")
    public String signupListRjhUpdate(Model model, SignupVO signupVO) {
    	List<SignupVO> listSu = signupVO.getListSignupVO();
    	System.out.println("----------리스트 vo에 값들을 출력해 봅시다~ --------------");
    	for(int i = 0;i<listSu.size();i++) {
    		SignupVO listSub = listSu.get(i);
    		System.out.println((i+1)+"번째 :::"+listSub+" ");
    		int updateSignupRjh = signupServiceRjh.updateSignupRjh(listSu.get(i));
    		
    	}
    	System.out.println("----------리스트 vo에 값들을 모두 출력했습니다~-------");    	

    	return "redirect:/signup/signupListRjh";
    }
}
