package com.cs.study.sample.service;

import com.cs.study.sample.mapper.TestMapper;
import com.cs.study.sample.vo.TestVO;
import com.cs.study.sample.vo.TestVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService {
    public final TestMapper syncTestMapper;

    public TestService(TestMapper syncTestMapper) {
        this.syncTestMapper = syncTestMapper;
    }

    public List<TestVO> selectTestList(TestVO testVO) {
        return syncTestMapper.selectTestList(testVO);
    }
}
