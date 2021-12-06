package com.cs.study.signup.controller;

import com.cs.study.commcode.service.CommCodeService;
import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.signup.service.SignupServiceJsw;
import com.cs.study.signup.vo.SignupVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

@Controller
public class SignupControllerJsw {

    private final CommCodeService codeService;
    private final SignupServiceJsw service;

    public SignupControllerJsw(CommCodeService codeService, SignupServiceJsw service) {
        this.codeService = codeService;
        this.service = service;
    }
    @GetMapping("/signup/signupListJsw")
    public String signupListJsw(Model model, SignupVO signupVO) {
    	
    	List<SignupVO> signupList = service.signupList(signupVO);
    	model.addAttribute("signupListJsw", signupList);
    	
    	return "/signup/signupListJsw";
    	
    }
    

    @GetMapping("/signup/signupJsw")
    public String signupJsw(Model model, SignupVO signupVO) {
    	
    	/*
    	 * CommCodeDtlVO 에 있는 MstCd 로 원하는 값 뽑아오기 
    	 * 
    	 * */
    	model.addAttribute("msg", "환영합니다 ~~~~~~ 회원가입을 진행해주세요  (*^▽^*)");
    	CommCodeDtlVO dtlVO = new CommCodeDtlVO();
    	dtlVO.setMstCd("M0001");
    	List<CommCodeDtlVO> telNum = codeService.selectCommCodeDtlList(dtlVO);
    	model.addAttribute("telNum", telNum);
    	
    	
    	dtlVO.setMstCd("M0002");
    	List<CommCodeDtlVO> QA = codeService.selectCommCodeDtlList(dtlVO);
    	model.addAttribute("QA", QA);

    	
    	dtlVO.setMstCd("M0003");
    	List<CommCodeDtlVO> gender = codeService.selectCommCodeDtlList(dtlVO);
    	model.addAttribute("gender", gender);

    	
    	dtlVO.setMstCd("M0004");
    	List<CommCodeDtlVO> terms = codeService.selectCommCodeDtlList(dtlVO);
    	if(terms.size() > 0) {
    		model.addAttribute("terms", terms.get(0).getDtlNm());
    	}
    	return "/signup/signupJsw";
    }

    @PostMapping("/signup/insertSignupJsw")
    public String insertSignupJsw(Model model, SignupVO signupVO)  {

    	
    	Boolean result = service.insertSignup(signupVO);
    	
    	if(result) {
        	CommCodeDtlVO dtlVO = new CommCodeDtlVO();
        	dtlVO.setMstCd("M0001");
        	List<CommCodeDtlVO> telNum = codeService.selectCommCodeDtlList(dtlVO);
        	model.addAttribute("telNum", telNum);
        	
        	
        	dtlVO.setMstCd("M0002");
        	List<CommCodeDtlVO> QA = codeService.selectCommCodeDtlList(dtlVO);
        	model.addAttribute("QA", QA);

        	
        	dtlVO.setMstCd("M0003");
        	List<CommCodeDtlVO> gender = codeService.selectCommCodeDtlList(dtlVO);
        	model.addAttribute("gender", gender);

        	
        	dtlVO.setMstCd("M0004");
        	List<CommCodeDtlVO> terms = codeService.selectCommCodeDtlList(dtlVO);
        	if(terms.size() > 0) {
        		model.addAttribute("terms", terms.get(0).getDtlNm());
        	}
        	
            // alert는 어떻게 날리지............
    //    	model.addAttribute("msg", "비밀번호가 일치하지 않습니다");
   //     	model.addAttribute("url", "/signup/signupJsw");
        	model.addAttribute("msg", "비밀번호가 일치하지 않습니다 y( ꒪◊꒪)y");
        
    		return "/signup/signupJsw";
    		
    	}else {
    		model.addAttribute("msg", "회원가입에 성공했습니다~~~!!!!!!!!!!!!!!!! ( •o• ) ﾍ( •̀ . •́ ﾍ) 와아앙" );
    		return "main";
    	}
    }
}
