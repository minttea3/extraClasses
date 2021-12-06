package com.cs.study.signup.service;

import com.cs.study.sample.vo.VisitVO;
import com.cs.study.signup.mapper.SignupMapperWis;
import com.cs.study.signup.vo.SignupVOWis;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.regex.Pattern;

@Service
public class SignupServiceWis {
    public final SignupMapperWis signupMapperWis;

    public SignupServiceWis(SignupMapperWis signupMapperWis) {
        this.signupMapperWis = signupMapperWis;
    }

    public int ListUpdate(SignupVOWis signupVOWis) {

        signupVOWis.setPhoneNumber(signupVOWis.getPhoneNumber1() +"-"+ signupVOWis.getPhoneNumber2() +"-"+ signupVOWis.getPhoneNumber3());

        if (signupVOWis.getTermsBuyYn() == null) {
            signupVOWis.setTermsBuyYn("N");
        }
        if (signupVOWis.getTermsInfoYn() == null) {
            signupVOWis.setTermsInfoYn("N");
        }
        if (signupVOWis.getTermsSellYn() == null) {
            signupVOWis.setTermsSellYn("N");
        }


        return signupMapperWis.ListUpdate(signupVOWis);
    }

    public boolean isNumeric(String str) {
        return Pattern.matches("^[0-9]*$", str);
    }

    public int insertSignupWis(SignupVOWis signupVOWis) {
        // 비밀번호 1,2가 같지 않을 경우 튕겨주기
        // 전화번호 1-2-3 합처서 받기.
        // 비밀번호 userPw 비밀번호 체크 userPwChk
        if (!signupVOWis.getUserPw().equals(signupVOWis.getUserPwChk())) {
            return 0;
        }

        // *********************String 비교는 == 말고 다른 방법으로 하세용
        if (signupVOWis.getGender() == "M") {
            signupVOWis.setGender("M");
        }
        if (signupVOWis.getGender() == "Y") {
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
        if (pN2.length() == 4 || pN3.length() == 4) {
        } else {
            return 0;
        }

        signupVOWis.setPhoneNumber(signupVOWis.getPhoneNumber1() + "-" + signupVOWis.getPhoneNumber2() + "-" + signupVOWis.getPhoneNumber3());

        return signupMapperWis.insertSignupWis(signupVOWis);

    }


//    public List<SignupVOWis> signupListwis(SignupVOWis signupVOWis) {
//        return signupMapperWis.signupListwis(signupVOWis);
//    }

    public List<SignupVOWis> signupListwis(SignupVOWis signupVOWis) {
        List<SignupVOWis> signupList = signupMapperWis.signupListwis(signupVOWis);
        // 전화번호를 분리한다
        // 1. Loop를 돌려서 phoneNumber 를 가지고온다
        for (int i = 0; i < signupList.size(); i++) {
            SignupVOWis loopVO = signupList.get(i);
            // 2. phoneNumber1,2,3에 '-'구분된 데이터를 각각 나누어 담는다
            String[] arrPN = loopVO.getPhoneNumber().split("-");
            loopVO.setPhoneNumber1(arrPN[0]);
            loopVO.setPhoneNumber2(arrPN[1]);
            loopVO.setPhoneNumber3(arrPN[2]);
            // 3. 담은 데이터를 다시 List에 담아준다
            signupList.set(i, loopVO);

        }

        for (int i = 0; i < signupList.size(); i++) {
            SignupVOWis loopVO = signupList.get(i);
//            System.out.println("pn1 :: " + loopVO.getPhoneNumber1());
//            System.out.println("pn2 :: " + loopVO.getPhoneNumber2());
//            System.out.println("pn3 :: " + loopVO.getPhoneNumber3());
//            System.out.println("=================================");
        }

        return signupList;
    }
}
