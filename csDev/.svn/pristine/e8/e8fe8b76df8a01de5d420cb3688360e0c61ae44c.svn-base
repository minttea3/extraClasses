package com.cs.study.signup.controller;

import com.cs.study.signup.service.SignupServiceWis;
import com.cs.study.signup.vo.SignupVOWis;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cs.study.commcode.service.CommCodeService;
import com.cs.study.commcode.vo.CommCodeDtlVO;

import java.util.List;

@Controller
public class SignupControllerWis {

    private final CommCodeService commCodeService;
    private final SignupServiceWis signupServiceWis;

    public SignupControllerWis(CommCodeService commCodeService, SignupServiceWis signupServiceWis) {
        this.commCodeService = commCodeService;
        this.signupServiceWis = signupServiceWis;
    }

    @GetMapping("/signup/signupWis")
    public String signupWis(Model model, SignupVOWis signupVOwis) {

        CommCodeDtlVO commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0001");
        List<CommCodeDtlVO> signupPhone = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("signupPhone", signupPhone);

        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0002");
        List<CommCodeDtlVO> signupPwAnswer = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("signupPwAnswer", signupPwAnswer);

        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0003");;
        List<CommCodeDtlVO> signupGender = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("signupGender", signupGender);

        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0004");;
        List<CommCodeDtlVO> signupTermsList = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        if (signupTermsList.size() > 0){
            model.addAttribute("signupTermsList", signupTermsList.get(0).getDtlNm());
        }

        return "signup/signupWis";
    }

    @PostMapping("/signup/insertSignupWis")
    public String insertSignupWis(Model model, SignupVOWis signupVOWis) {
        int insertYN = signupServiceWis.insertSignupWis(signupVOWis);
            if(insertYN <= 1){
                model.addAttribute("signupVOWis", signupVOWis);

                CommCodeDtlVO commCodeDtlVO = new CommCodeDtlVO();
                commCodeDtlVO.setMstCd("M0001");
                List<CommCodeDtlVO> signupPhone = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
                model.addAttribute("signupPhone", signupPhone);

                commCodeDtlVO = new CommCodeDtlVO();
                commCodeDtlVO.setMstCd("M0002");
                List<CommCodeDtlVO> signupPwAnswer = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
                model.addAttribute("signupPwAnswer", signupPwAnswer);

                commCodeDtlVO = new CommCodeDtlVO();
                commCodeDtlVO.setMstCd("M0003");;
                List<CommCodeDtlVO> signupGender = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
                model.addAttribute("signupGender", signupGender);

                commCodeDtlVO = new CommCodeDtlVO();
                commCodeDtlVO.setMstCd("M0004");;
                List<CommCodeDtlVO> signupTermsList = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
                if (signupTermsList.size() > 0){
                    model.addAttribute("signupTermsList", signupTermsList.get(0).getDtlNm());
                }
                return "/signup/signupWis";
            }else{

                return "redirect:/signup/signupListWis";
            }
    }

    @GetMapping("/signup/signupListWis")
    public String signupListwis(Model model, SignupVOWis signupVOWis){

        List<SignupVOWis> signupListwis = signupServiceWis.signupListwis(signupVOWis);
//        List<SignupVOWis> signupListwis2 = signupServiceWis.signupListwis2(signupVOWis);
        model.addAttribute("signupListwis", signupListwis);
//        model.addAttribute("signupListwis2", signupListwis2);
        model.addAttribute("signupVOWis", signupVOWis);

        CommCodeDtlVO commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0002");
        List<CommCodeDtlVO> signupPwAnswer = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("signupPwAnswer", signupPwAnswer);

        commCodeDtlVO = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0003");;
        List<CommCodeDtlVO> signupGender = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("signupGender", signupGender);

        commCodeDtlVO  = new CommCodeDtlVO();
        commCodeDtlVO.setMstCd("M0001");
        List<CommCodeDtlVO> signupPhone = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("signupPhone", signupPhone);


        return "signup/signupListWis";
    }


}