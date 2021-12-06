package com.cs.study.sample.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.cs.study.sample.vo.SampleVO;

@Mapper
public interface SampleMapper {

    public SampleVO selectSampleOne(SampleVO sampleVO);

    public List<SampleVO> selectSampleList(SampleVO sampleVO);

    public int saveSample(SampleVO sampleVO);

    public int insertSample(SampleVO sampleVO);

    public int updateSample(SampleVO sampleVO);

    public int deleteSample(SampleVO sampleVO);
}
