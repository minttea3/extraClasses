package com.cs.study.signup.controller;

import com.cs.study.commcode.service.CommCodeService;
import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.radioselect.service.DeptService;
import com.cs.study.radioselect.vo.DeptVO;
import com.cs.study.signup.service.SignupServiceLmg;
import com.cs.study.signup.vo.SignupVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class SignupControllerLmg {

    private final CommCodeService commCodeService;
    private final SignupServiceLmg signupServiceLmg;

    public SignupControllerLmg(CommCodeService commCodeService, SignupServiceLmg signupServiceLmg) {
        this.commCodeService = commCodeService;
        this.signupServiceLmg = signupServiceLmg;
    }

    @GetMapping("/signup/signupLmg")
    public String signupLmg(Model model, SignupVO signupVO) {

        
        CommCodeDtlVO commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0001");
        List<CommCodeDtlVO> phoneNumber = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("phoneNumber", phoneNumber);
        
        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0002");
        List<CommCodeDtlVO> passwordQs = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("passwordQs", passwordQs);
        
        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0003");
        List<CommCodeDtlVO> gender = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("gender", gender);
        
        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0004");
        List<CommCodeDtlVO> terms = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        if(terms.size() > 0) {
        	
        	model.addAttribute("terms", terms.get(0).getDtlNm());
        }
        
        
        
        
        return "signup/signupLmg";
    }

    @GetMapping("/signup/signupListLmg")
    public String listSignup(Model model, SignupVO signupVO) {
    	
    	List<SignupVO> listsignup = signupServiceLmg.singuplist(signupVO);
    	model.addAttribute("listsignup", listsignup);
    	
        return "/signup/signupListLmg";
    }
    
    @PostMapping("/singup/insertLmg") 
    public String insertSignup(Model model, SignupVO signupVO) {
    	
    	Boolean intCnt = signupServiceLmg.insertSignup(signupVO);
    	
    	if(intCnt) {
    		 
            CommCodeDtlVO commCodeDtlVO = new CommCodeDtlVO();
            commCodeDtlVO.setMstCd("M0001");
            List<CommCodeDtlVO> phoneNumber = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
            model.addAttribute("phoneNumber", phoneNumber);
            
            commCodeDtlVO = new CommCodeDtlVO();
            commCodeDtlVO.setMstCd("M0002");
            List<CommCodeDtlVO> passwordQs = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
            model.addAttribute("passwordQs", passwordQs);
            
            commCodeDtlVO = new CommCodeDtlVO();
            commCodeDtlVO.setMstCd("M0003");
            List<CommCodeDtlVO> gender = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
            model.addAttribute("gender", gender);
            
            commCodeDtlVO = new CommCodeDtlVO();
            commCodeDtlVO.setMstCd("M0004");
            List<CommCodeDtlVO> terms = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
            if(terms.size() > 0) {
            	
            	model.addAttribute("terms", terms.get(0).getDtlNm());
            }
    		
    		return "signup/signupLmg";
    	} else {
    		return "main";
    	}
    	
    }
}
