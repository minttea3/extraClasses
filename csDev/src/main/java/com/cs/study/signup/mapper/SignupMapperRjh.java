package com.cs.study.signup.mapper;

import com.cs.study.signup.vo.SignupVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SignupMapperRjh {

    public int insertSignupRjh(SignupVO signupVO);
    
    public List<SignupVO> selectSignupRjh(SignupVO signupVO);
    
    
    public int updateSignupRjh(SignupVO signupVO);

}
