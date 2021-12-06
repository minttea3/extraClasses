package com.cs.study.signup.mapper;

import com.cs.study.signup.vo.SignupVOWis;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface SignupMapperWis {

    public int insertSignupWis(SignupVOWis signupVOWis);

    public List<SignupVOWis> signupListwis(SignupVOWis signupVOWis);

    public int ListUpdate(SignupVOWis signupVOWis);

    public int ListDelete(SignupVOWis signupVOWis);

    public int addSignupWis(SignupVOWis signupVOWis);
}