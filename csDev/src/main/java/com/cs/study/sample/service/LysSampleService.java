package com.cs.study.sample.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.sample.mapper.LysSampleMapper;
import com.cs.study.sample.vo.SampleVO;
import com.cs.study.signup.vo.LysSignupVO;

@Service
public class LysSampleService{
    public final LysSampleMapper syncSampleMapper;

    public LysSampleService(LysSampleMapper syncSampleMapper) {
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
    
    public List<CommCodeDtlVO> selectCode(CommCodeDtlVO commCodeDtlVO) {
    	return syncSampleMapper.selectCode(commCodeDtlVO);
    }
    
    public List<LysSignupVO> selectSignupList(LysSignupVO lyssignupVO) {
    	return syncSampleMapper.selectSignupList(lyssignupVO);
    }
    
    public String insertSignupLys(LysSignupVO lyssignupVO) {
    	try {
    		syncSampleMapper.insertSignupLys(lyssignupVO);
    		return "회원가입에 성공하였습니다.";
    	} catch(Exception e) {
    		e.printStackTrace();
    		return "회원가입에 실패하였습니다.";
    	}
    }
    
    public int updateList(LysSignupVO lysSignupVO) {
    	return syncSampleMapper.updateList(lysSignupVO);
    }
    
    public int deleteList(LysSignupVO lysSignupVO) {
    	return syncSampleMapper.deleteList(lysSignupVO);
    }
}
