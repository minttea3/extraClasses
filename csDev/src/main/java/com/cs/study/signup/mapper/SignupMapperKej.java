package com.cs.study.signup.mapper;

import com.cs.study.signup.vo.SignupVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SignupMapperKej {

    public int insertSignupKej(SignupVO signupVO);
    
    public List<SignupVO> selectSignupKej(SignupVO signupVO);
    
    // 수정용 메서드
    public int updateSignupKej(SignupVO signupVO);
    
    // 삭제용 메서드
    public int deleteSignupKej(SignupVO signupVO);

}
