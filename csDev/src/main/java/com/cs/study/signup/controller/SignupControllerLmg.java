package com.cs.study.signup.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cs.study.commcode.service.CommCodeService;
import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.signup.service.SignupServiceLmg;
import com.cs.study.signup.vo.SignupVO;

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
    	
    	CommCodeDtlVO commCodeDtlVO = new CommCodeDtlVO();
    	
    	commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0002");
        List<CommCodeDtlVO> passwordQs = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("passwordQs", passwordQs);
        
        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0003");
        List<CommCodeDtlVO> gender = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("gender", gender);
        
        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0001");
        List<CommCodeDtlVO> phoneNumber = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("phoneNumber", phoneNumber);
        
   
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
    
    @PostMapping("/singup/updateLmg") 
    // @RequestParam�� ���� ������ VO�� ������ ������ ���  
    public String updatelist(Model model, SignupVO signupVO, @RequestParam(value="action") String action) {
    	
    	List<SignupVO> test = signupVO.getListSignupVO();
    	
    	for(int i = 0; i<test.size(); i++) {
    		test.get(i).getChkflag();
    		System.out.println(test.get(i).getChkflag());
    		System.out.println("--------------------------------------------------------");
    	}
    	
    	
    	if ( "update".equals(action) ){
    		
    		List<SignupVO> updatesignup = signupVO.getListSignupVO(); 
    		
    		for(int i = 0; i < updatesignup.size(); i++) {                                                                                                        
    			SignupVO list = updatesignup.get(i);
				if("Y".equals(list.getChkflag())) {
        		int updateint = signupServiceLmg.updatelist(updatesignup.get(i));	
	        }
	    }
    	}else if ( "delete".equals(action) ){
    		
    		List<SignupVO> deletesignup = signupVO.getListSignupVO(); 

    		for(int i = 0; i < deletesignup.size(); i++) {                                                                                                        
    			SignupVO list = deletesignup.get(i);
    					if("Y".equals(list.getChkflag())) {
    	        			int deleteint = signupServiceLmg.deletelist(list);
    	        			
    	        			System.out.println(list);
    	        			System.out.println("------------------------------------------------------------------------------");

    	        		}
        		
        		
        		
        	}
    		
    	}
    	
    	return "redirect:/signup/signupListLmg";
    	
    }
    
}