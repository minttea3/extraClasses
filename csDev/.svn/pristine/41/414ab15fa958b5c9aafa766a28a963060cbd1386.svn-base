package com.cs.study.signup.service;

import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.signup.mapper.SignupMapperWis;
import com.cs.study.signup.vo.SignupVOWis;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.regex.Pattern;

@Service
public class SignupServiceWis {
    public final SignupMapperWis signupMapperWis;

    public SignupServiceWis(SignupMapperWis signupMapperWis) {
        this.signupMapperWis = signupMapperWis;
    }

    public boolean isNumeric(String str) {
        return Pattern.matches("^[0-9]*$", str);
    }

    public int insertSignupWis(SignupVOWis signupVOWis ){
        // 비밀번호 1,2가 같지 않을 경우 튕겨주기
        // 전화번호 1-2-3 합처서 받기.
        // 비밀번호 userPw 비밀번호 체크 userPwChk
        if(!signupVOWis.getUserPw().equals(signupVOWis.getUserPwChk())){
            return 0;
        }

        // *********************String 비교는 == 말고 다른 방법으로 하세용
        if(signupVOWis.getGender() == "M"){
            signupVOWis.setGender("M");
        }
        if(signupVOWis.getGender() == "Y"){
            signupVOWis.setGender("Y");
        }

        if (signupVOWis.getTermsBuyYn() == null) {
            signupVOWis.setTermsBuyYn("N");
        }
        if (signupVOWis.getTermsInfoYn() == null) {
            signupVOWis.setTermsInfoYn("N");
        }
        if (signupVOWis.getTermsSellYn() == null) {
            signupVOWis.setTermsSellYn("N");
        }

        String pN2 = signupVOWis.getPhoneNumber2();
        String pN3 = signupVOWis.getPhoneNumber3();

        boolean pon2 = isNumeric(pN2);
        boolean pon3 = isNumeric(pN3);

        // *********************if안에 아무 코딩이 없으면 굳이 if else를 나눈필요가 없습니당
        if(pN2.length() ==4 || pN3.length() ==4){
        } else {
            return 0;
        }

        signupVOWis.setPhoneNumber(signupVOWis.getPhoneNumber1() +"-"+ signupVOWis.getPhoneNumber2() +"-"+ signupVOWis.getPhoneNumber3());

        return signupMapperWis.insertSignupWis(signupVOWis);

    }


    public List<SignupVOWis> signupListwis(SignupVOWis signupVOWis){
        return signupMapperWis.signupListwis(signupVOWis);
    }
}