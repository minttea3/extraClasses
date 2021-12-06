package com.cs.study.sample.service;

import java.util.List;


import org.springframework.stereotype.Service;
import com.cs.study.sample.mapper.SampleMapper;
import com.cs.study.sample.vo.SampleVO;

@Service
public class SampleService{
    public final SampleMapper syncSampleMapper;

    public SampleService(SampleMapper syncSampleMapper) {
        this.syncSampleMapper = syncSampleMapper;
    }

    public SampleVO selectSampleOne(SampleVO sampleVO){
        return syncSampleMapper.selectSampleOne(sampleVO);
    }

    public List<SampleVO> selectSampleList(SampleVO sampleVO) {
        return syncSampleMapper.selectSampleList(sampleVO);
    }

    public int saveSample(SampleVO sampleVO) {
        return syncSampleMapper.saveSample(sampleVO);
    }

    public int insertSample(SampleVO sampleVO) {
        return syncSampleMapper.insertSample(sampleVO);
    }

    public int updateSample(SampleVO sampleVO) {
        return syncSampleMapper.updateSample(sampleVO);
    }

    public int deleteSample(SampleVO sampleVO) {
        return syncSampleMapper.deleteSample(sampleVO);
    }
}
