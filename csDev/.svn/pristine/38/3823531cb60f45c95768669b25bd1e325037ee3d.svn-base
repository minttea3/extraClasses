package com.cs.study.signup.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cs.study.commcode.service.CommCodeService;
import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.radioselect.service.DeptService;
import com.cs.study.signup.service.SignupService;
import com.cs.study.signup.service.SignupServiceKej;
import com.cs.study.signup.vo.SignupVO;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
public class SignupControllerKej {

    private final DeptService deptService;
    private final SignupServiceKej signupServiceKej;
    private final CommCodeService commCodeService;
    

    public SignupControllerKej(DeptService deptService, SignupServiceKej signupServiceKej, CommCodeService commCodeService) {
        this.deptService = deptService;
        this.signupServiceKej = signupServiceKej;
        this.commCodeService = commCodeService;
    }

    @GetMapping("/signup/signupKej")
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
			// ********************* 아예 하나만 꺼내서 리턴하는거 조코~
			// ********************* 이런경우 selectTermsOne 같이 하나만 리턴하는 메소드 만들면 굿좝
    		model.addAttribute("selectTerms",selectTermsList.get(0).getDtlNm());
    	}
        return "signup/signupKej";
    }

    @PostMapping("/signup/insertSignupKej")
    public String insertSignup(Model model, SignupVO signupVO) {
    	int count = signupServiceKej.insertSignup(signupVO);
    	String url = "signup/signupKej";
    	if(count > 0) {//정상일 경우
    		System.out.println("---------------");
    		System.out.println("정상");
    		System.out.println("---------------");
    		model.addAttribute("msg","회원가입을 축하합니다 😀");
//    		return "redirect:/signup/signupListKej";
    		return "/signup/signupMsgKej";
    		
    	}else if(count == -1){ // 비번 실패
    		
        	
    		model.addAttribute("signupVO",signupVO);
    		model.addAttribute("msg","비밀번호를 다시 입력하세요.");
    		url= "signup/signupKej";
    	}else if(count == -2) { // 전화 실패
    		model.addAttribute("signupVO",signupVO);
    		model.addAttribute("msg","전화번호를 다시 입력하세요.");
    		
    		url= "signup/signupKej";
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
    
    @GetMapping("/signup/signupListKej")
    public String signupListKej(Model model, SignupVO signupVO) {
    // 조회 페이지
    	
    	// 회원가입관련 리스트 출력
    	List<SignupVO> selectSignupKej =signupServiceKej.selectSignupKej2(signupVO);
    	model.addAttribute("selectSignupKej",selectSignupKej);
    	model.addAttribute("signupVO2",signupVO);
//    	System.out.println("**************************");
//    	System.out.println("selectSignupKej::"+selectSignupKej);
//    	System.out.println("**************************");
    	
    	// 비밀번호 질문
    	CommCodeDtlVO ccd = new CommCodeDtlVO();
    	ccd.setMstCd("M0002");
    	List<CommCodeDtlVO> selectPwQuestionList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectPwQuestionList",selectPwQuestionList);
    	System.out.println("**************************");
    	System.out.println("selectPwQuestionList:::"+selectPwQuestionList);
    	System.out.println("**************************");
    	// 성별
    	ccd =new CommCodeDtlVO();
    	ccd.setMstCd("M0003");
    	List<CommCodeDtlVO> selectGenderList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectGenderList",selectGenderList);
//    	System.out.println("**************************");
//    	System.out.println("selectGenderList:::"+selectGenderList);
//    	System.out.println("**************************");
    	
    	// 전화번호 앞자리
    	ccd = new CommCodeDtlVO();
    	ccd.setMstCd("M0001");
    	List<CommCodeDtlVO> selectPhoneNumberList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectPhoneNumberList",selectPhoneNumberList);
//    	System.out.println("-------------------");
//    	System.out.println("selectPhoneNumberList::"+selectPhoneNumberList);
//    	System.out.println("-------------------");
    	
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
    	
    	
    	return "signup/signupListKej";
    }
    
    @PostMapping("/signup/signupListKejUpdate")
    public String signupListKejUpdate(Model model, SignupVO signupVO, @RequestParam(value="action", required=true) String action) { // required=true 필수값을 말하고 꼭 쓰지 않아도 됨. // name=action 인거 가져옴.
    	if("update".equals(action)) { // 수정 눌렀을때
    		
    	 	
        	// 1. 서비스에서 전화번호를 합친다.
        	// 2. 서비스에서 업데이트 메서드 만들고
        	// 3. 컨트롤러에서 포문을 돌려 업데이트를 여러번 실행한다.
        	// 4. 셀렉된거 걸어주려면?
    		
    		System.out.println("수정 버튼 클릭!!!!!!!!!!!!!!");
    	List<SignupVO> listSu = signupVO.getListSignupVO();
    	System.out.println("----------리스트 vo에 값들을 출력해 봅시다~ --------------");
    	for(int i = 0;i<listSu.size();i++) {
    		SignupVO listSub = listSu.get(i);
    		String listCf = listSu.get(i).getChkflag();//체크박스 값을 가져온다.
    		
    		//System.out.println((i+1)+"번째 :::"+listSub+" ");
//    		System.out.println("체크 박스 값:::"+listCf);
    		if("Y".equals(listCf)) {
//    			
    			int updateSignupKEj = signupServiceKej.updateSignupKej(listSu.get(i));
    		}
    		
    	}
    	System.out.println("----------리스트 vo에 값들을 모두 출력했습니다~-------");
   
    	}
    	if ( "delete".equals(action) ){//삭제 눌렀을때
    		System.out.println("삭제 버튼 클릭!!!!!!!!!!!!!!");
    		
    		// 1. 체크박스 체크되면 Y 담고, 안된건 null 담김
			// 2. 값이 Y인(null이 아닌) tr 의 seq 값 가져오기
			// 3. Y갯수만큼 포문에 돌리기
			// 4. 포문안에서 삭제 쿼리
    		
    		List<SignupVO> listSu2 = signupVO.getListSignupVO(); // 체크박스 값만 가져왔음
    		for(int j=0;j<listSu2.size();j++) {
    			String listCf = listSu2.get(j).getChkflag(); // 체크박스 값
    			
    			//System.out.println((j+1)+"번째 :::"+listCf+" ");
    			if(listCf != null) { // 체크박스 들어온 값이 널이 아닐경우에만 작동되게함 // Y로 비교 한다면 "Y".equals(listCf) 이렇게하면 널포인터에러 안남. "Y" 가 뒤로 가면 널포인터 에러남
//	    			if(listCf.equals("Y")) {
	    				System.out.println("값이 Y야 !!!");
	    				SignupVO signVO = listSu2.get(j);
	    				int delete = signupServiceKej.deleteSignupKej(signVO);
//	    			}
    			}
    		}
    		System.out.println("------------------ 완료 ----------------");
    	}
    	if("insert".equals(action)) { // 등록 버튼 눌렀을 때 (insert 하기)
    		System.out.println("-----저장 start ------");
    		
    		// 1. vo 넘어 온 값을 확인한다.
    		// 2. 체크박스 체크 된 걸 포문을 돌려 등록함.
    		
    		List<SignupVO> listSu3 = signupVO.getListSignupVO();
    		for(int i = 0 ; i<listSu3.size();i++) {
    			//System.out.println(listSu3.get(i)+" " );
    			SignupVO signVO = listSu3.get(i);
//    			System.out.println("리스트 값 확인하기");
//    			System.out.println(signVO+" " );
    			
    			
    			String listCf = listSu3.get(i).getChkflag(); // 체크박스 값
    			// 체크 박스 체크 된거 Y 인것만 실행하기 위해 조건문
    			if("Y".equals(listCf)) {
    				// 폰넘버1,2,3 을 폰넘버에 - 붙여 합친다 , 성별, 체크박스 널로 들어온거 N 처리
    			int insert = signupServiceKej.saveSignupKej(signVO);
    			System.out.println("성공!ㅋㅋㅋ");
    			}
    			
    		}
    		System.out.println("-----저장 End ------");
    	}
    	if("save".equals(action)) { // 저장 버튼 눌렀을때 seq가 있으면 insert, 없으면 update 실행 *** 11/27
    		// 1. vo에서 넘어 온 값을 확인한다.
    		// 2. 체크박스가 선택된거 Y값으로 넘어와서 Y인 것만 실행 
    		// 3. seq 가 없을 경우 insert, 있을 경우 update 실행함
    		List<SignupVO> listSu4 = signupVO.getListSignupVO();
    		for(int i=0;i<listSu4.size();i++) {
    			SignupVO signVO = listSu4.get(i);
    			System.out.println("리스트 값 확인하기");
    			System.out.println(signVO+" " );

    			String listCf = listSu4.get(i).getChkflag(); // 체크박스 값
    			System.out.println("체크한거 확인"+listCf+" ");
    			// 체크 박스 체크 된거 Y 인것만 실행하기 위해 조건문
    			if("Y".equals(listCf)) {
    				
    				signupServiceKej.insertOrSaveSignupKej(signVO);
    			}
    		}
    		
    	}
    	//	System.out.println("action이 나옵니다?"+action);
    	return "redirect:/signup/signupListKej";
    	
    	
    	
    }
   //----------------------------------------------------------------------------------------------------------------- 
    
    // 회원가입 리스트 버전2
    @GetMapping("/signup/signupListKejVersion2")
    public String signupListKejVersion2(Model model, SignupVO signupVO) {
    	// 회원가입관련 리스트 출력
    	List<SignupVO> selectSignupKej =signupServiceKej.selectSignupKej2(signupVO);
    	model.addAttribute("selectSignupKej",selectSignupKej);
    	model.addAttribute("signupVO2",signupVO);
//    	System.out.println("**************************");
//    	System.out.println("selectSignupKej::"+selectSignupKej);
//    	System.out.println("**************************");
    	
    	// 비밀번호 질문
    	CommCodeDtlVO ccd = new CommCodeDtlVO();
    	ccd.setMstCd("M0002");
    	List<CommCodeDtlVO> selectPwQuestionList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectPwQuestionList",selectPwQuestionList);
//    	System.out.println("**************************");
//    	System.out.println("selectPwQuestionList:::"+selectPwQuestionList);
//    	System.out.println("**************************");
    	// 성별
    	ccd =new CommCodeDtlVO();
    	ccd.setMstCd("M0003");
    	List<CommCodeDtlVO> selectGenderList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectGenderList",selectGenderList);
//    	System.out.println("**************************");
//    	System.out.println("selectGenderList:::"+selectGenderList);
//    	System.out.println("**************************");
    	
    	// 전화번호 앞자리
    	ccd = new CommCodeDtlVO();
    	ccd.setMstCd("M0001");
    	List<CommCodeDtlVO> selectPhoneNumberList = commCodeService.selectCommCodeDtlList(ccd);
    	model.addAttribute("selectPhoneNumberList",selectPhoneNumberList);
//    	System.out.println("-------------------");
//    	System.out.println("selectPhoneNumberList::"+selectPhoneNumberList);
//    	System.out.println("-------------------");
    	
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
    	
    	return "/signup/signupListKejVersion2";
    }
    
    @PostMapping("/signup/signupListKejUpdate2")
    public String signupListKejUpdate2(Model model, SignupVO signupVO, @RequestParam(value="action", required=true) String action) { // required=true 필수값을 말하고 꼭 쓰지 않아도 됨. // name=action 인거 가져옴.
    	if("update".equals(action)) { // 수정 눌렀을때
    		
    	 	
        	// 1. 서비스에서 전화번호를 합친다.
        	// 2. 서비스에서 업데이트 메서드 만들고
        	// 3. 컨트롤러에서 포문을 돌려 업데이트를 여러번 실행한다.
        	// 4. 셀렉된거 걸어주려면?
    		
    		System.out.println("수정 버튼 클릭!!!!!!!!!!!!!!");
    	List<SignupVO> listSu = signupVO.getListSignupVO();
    	System.out.println("----------리스트 vo에 값들을 출력해 봅시다~ --------------");
    	for(int i = 0;i<listSu.size();i++) {
    		SignupVO listSub = listSu.get(i);
    		String listCf = listSu.get(i).getChkflag();//체크박스 값을 가져온다.
    		
    		//System.out.println((i+1)+"번째 :::"+listSub+" ");
//    		System.out.println("체크 박스 값:::"+listCf);
    		if(listCf != null && "Y".equals(listCf)) {
//    			
    			int updateSignupKEj = signupServiceKej.updateSignupKej(listSu.get(i));
    		}
    		
    	}
    	System.out.println("----------리스트 vo에 값들을 모두 출력했습니다~-------");
   
    	}
    	if ( "delete".equals(action) ){//삭제 눌렀을때
    		System.out.println("삭제 버튼 클릭!!!!!!!!!!!!!!");
    		
    		// 1. 체크박스 체크되면 Y 담고, 안된건 null 담김
			// 2. 값이 Y인(null이 아닌) tr 의 seq 값 가져오기
			// 3. Y갯수만큼 포문에 돌리기
			// 4. 포문안에서 삭제 쿼리
    		
    		List<SignupVO> listSu2 = signupVO.getListSignupVO(); // 체크박스 값만 가져왔음
    		for(int j=0;j<listSu2.size();j++) {
    			String listCf = listSu2.get(j).getChkflag(); // 체크박스 값
    			
    			//System.out.println((j+1)+"번째 :::"+listCf+" ");
    			if(listCf != null && "Y".equals(listCf)) { // 체크박스 들어온 값이 널이 아닐경우에만 작동되게함 // Y로 비교 한다면 "Y".equals(listCf) 이렇게하면 널포인터에러 안남. "Y" 가 뒤로 가면 널포인터 에러남
//	    			if(listCf.equals("Y")) {
	    				System.out.println("값이 Y야 !!!");
	    				SignupVO signVO = listSu2.get(j);
	    				int delete = signupServiceKej.deleteSignupKej(signVO);
//	    			}
    			}
    		}
    		System.out.println("------------------ 완료 ----------------");
    	}
    	
    
    		
    	//	System.out.println("action이 나옵니다?"+action);
    	return "redirect:/signup/signupListKejVersion2";
    }
    
}
