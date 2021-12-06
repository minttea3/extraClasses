package com.cs.study.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.cs.study.sample.vo.SampleVOlmg;

@Mapper
public interface SampleMapperlmg {

    public SampleVOlmg foodselectOne(SampleVOlmg sampleVO);

    public List<SampleVOlmg> foodselectList(SampleVOlmg sampleVO);

    public int foodsave(SampleVOlmg sampleVO);

    public int fooddelete(SampleVOlmg sampleVO);
}
