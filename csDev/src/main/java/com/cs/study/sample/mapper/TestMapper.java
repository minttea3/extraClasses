package com.cs.study.sample.mapper;

import com.cs.study.sample.vo.SampleVO;
import com.cs.study.sample.vo.TestVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TestMapper {

    public List<TestVO> selectTestList(TestVO testVO);
}
