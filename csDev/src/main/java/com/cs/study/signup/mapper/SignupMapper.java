package com.cs.study.signup.mapper;

import com.cs.study.signup.vo.SignupVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SignupMapper {

    public int insertSignup(SignupVO signupVO);

}