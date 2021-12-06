package com.cs.study.signup.mapper;

import com.cs.study.signup.vo.SignupVO;

import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface SignupKyjMapper {

	public int insertSignupKyj(SignupVO signupVO);
	public int insertSignups(SignupVO signupVO);
	public List<SignupVO> selectSignupKyj(SignupVO signupVO);
	public int listSignUpdate(SignupVO signupVO);
	public int listdeleteSignup(SignupVO signupVO);

	
}


