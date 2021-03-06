package com.cs.study.sample.controller.lys;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.sample.service.LysSampleService;
import com.cs.study.sample.vo.TestVO;
import com.cs.study.signup.vo.LysSignupVO;
import com.cs.study.signup.vo.SignupVO;

@Controller
public class SyncSampleControllerLys {
	
	private final LysSampleService LyssampleService;
	
	public SyncSampleControllerLys(LysSampleService LyssampleService) { 
		this.LyssampleService = LyssampleService; 
	}
	
	@GetMapping("/signup/signupLys")
    public String signupLys(Model model, SignupVO signupVO, CommCodeDtlVO commCodeDtlVO) {
		//사용 여부 셋팅
		commCodeDtlVO.setUseYn("Y");
		
		//비밀번호 질문 코드 셋팅
		commCodeDtlVO.setMstCd("M0002");
		List<CommCodeDtlVO> selectQuestionList = LyssampleService.selectCode(commCodeDtlVO);
		
		//폰 번호 코드 셋팅
		commCodeDtlVO.setMstCd("M0001");
		List<CommCodeDtlVO> phoneNumList = LyssampleService.selectCode(commCodeDtlVO);
		
		//성별 코드 셋팅
		commCodeDtlVO.setMstCd("M0003");
		List<CommCodeDtlVO> genderList = LyssampleService.selectCode(commCodeDtlVO);
		
		model.addAttribute("questionList", selectQuestionList);
		model.addAttribute("phoneNumList", phoneNumList);
		model.addAttribute("genderList", genderList);
        return "sample/syncSampleLys/signupLys";
	}
	
	@PostMapping("/signup/insertSignupLys")
    public String insertSignup(Model model, @ModelAttribute LysSignupVO lyssignupVO, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8"); 
		PrintWriter out = response.getWriter();
		
		CommCodeDtlVO commCodeDtlVO = new CommCodeDtlVO();
		//사용 여부 셋팅
		commCodeDtlVO.setUseYn("Y");
		
		//비밀번호 질문 코드 셋팅
		commCodeDtlVO.setMstCd("M0002");
		List<CommCodeDtlVO> selectQuestionList = LyssampleService.selectCode(commCodeDtlVO);
		
		//폰 번호 코드 셋팅
		commCodeDtlVO.setMstCd("M0001");
		List<CommCodeDtlVO> phoneNumList = LyssampleService.selectCode(commCodeDtlVO);
		
		//성별 코드 셋팅
		commCodeDtlVO.setMstCd("M0003");
		List<CommCodeDtlVO> genderList = LyssampleService.selectCode(commCodeDtlVO);
		
		model.addAttribute("questionList", selectQuestionList);
		model.addAttribute("phoneNumList", phoneNumList);
		model.addAttribute("genderList", genderList);
		
		if(!lyssignupVO.getUserPw().equals(lyssignupVO.getUserPwChk())) {
			model.addAttribute("cheValue", lyssignupVO);
			model.addAttribute("msg", "비밀번호가 다릅니다 비밀번호를 확인해 주세요.");

		} else {
			
			String msg = LyssampleService.insertSignupLys(lyssignupVO);
			model.addAttribute("msg", msg);
			 
		}
		return "sample/syncSampleLys/signupLys";
    }
	
	@GetMapping("/signup/signupListLys")
    public String signupListLys(Model model, LysSignupVO lyssignupVO,CommCodeDtlVO commCodeDtlVO) {
		
		List<LysSignupVO> signupList = LyssampleService.selectSignupList(lyssignupVO);

		//비밀번호 질문 코드 셋팅
		commCodeDtlVO.setMstCd("M0002");
		commCodeDtlVO.setUseYn("Y");
		List<CommCodeDtlVO> selectQuestionList = LyssampleService.selectCode(commCodeDtlVO);
		
		//성별
		commCodeDtlVO.setMstCd("M0003");
		List<CommCodeDtlVO> genderList = LyssampleService.selectCode(commCodeDtlVO);
		
		//폰 번호 코드 셋팅
		commCodeDtlVO.setMstCd("M0001");
		List<CommCodeDtlVO> phoneNumList = LyssampleService.selectCode(commCodeDtlVO);
		
		model.addAttribute("list", signupList);
		model.addAttribute("question", selectQuestionList);
		model.addAttribute("genderList", genderList);
		model.addAttribute("phoneNumList", phoneNumList);
		model.addAttribute("searchValue", lyssignupVO);
		
		System.out.println("질문 : " + genderList);
        return "signup/signupListLys";
	}
	
	@Transactional
	@PostMapping("/signup/signupSaveListLys")
	public String signupListLys(LysSignupVO lyssignupVO, @RequestParam(value="action") String action) {
		System.out.println("action" + action);
		List<LysSignupVO> listVo = lyssignupVO.getListLysSignupVO();
		LysSignupVO lysSignupVO2 = new LysSignupVO();
		int count = 0;
		
		if("M".equals(action)) {
			System.out.println("등록 + 수정");
			for(int i=0; i<listVo.size(); i++) {
				lysSignupVO2 = listVo.get(i);
				if("Y".equals(lysSignupVO2.getCheckTest())) {
					if(lysSignupVO2.getSeq() == 0) {
						LyssampleService.insertSignupLys(lysSignupVO2);
					} else {
						LyssampleService.updateList(lysSignupVO2);
					}
				}
			}
		} else if("D".equals(action)) {
			System.out.println("삭제");
			for(int i=0; i<listVo.size(); i++) { 
				lysSignupVO2 = listVo.get(i);
				if("Y".equals(lysSignupVO2.getCheckTest())) {
					count += LyssampleService.deleteList(lysSignupVO2); 
				}
			}
		}

		return "redirect:/signup/signupListLys";
	}

}