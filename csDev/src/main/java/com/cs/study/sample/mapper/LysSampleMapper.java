package com.cs.study.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.sample.vo.SampleVO;
import com.cs.study.signup.vo.LysSignupVO;

@Mapper
public interface LysSampleMapper {

    public SampleVO selectSampleOne(SampleVO sampleVO);

    public List<SampleVO> selectSampleList(SampleVO sampleVO);

    public int saveSample(SampleVO sampleVO);

    public int insertSample(SampleVO sampleVO);

    public int updateSample(SampleVO sampleVO);

    public int deleteSample(SampleVO sampleVO);
    
    public List<CommCodeDtlVO> selectCode(CommCodeDtlVO commCodeDtlVO);
    
    public List<LysSignupVO> selectSignupList(LysSignupVO lyssignupVO);

	public void insertSignupLys(LysSignupVO lyssignupVO);
	
	public int updateList(LysSignupVO lysSignupVO);
	
	public int deleteList(LysSignupVO lysSignupVO);
    
}
