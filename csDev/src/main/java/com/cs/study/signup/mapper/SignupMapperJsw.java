package com.cs.study.signup.mapper;

import com.cs.study.signup.vo.SignupVO;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface SignupMapperJsw {

    public int insertSignup(SignupVO signupVO);
    public int insertSignups(SignupVO signupVO);
    public int saveSignup(SignupVO signupVO);
    public List<SignupVO> signupList(SignupVO signupVO);
    public int updateSignup(SignupVO signupVO);
    public int deleteSignup(SignupVO signupVO);
    

}
