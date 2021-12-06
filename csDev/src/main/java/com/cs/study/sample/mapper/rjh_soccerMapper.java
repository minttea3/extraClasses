package com.cs.study.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.cs.study.sample.vo.rjh_soccerVO;

@Mapper
public interface rjh_soccerMapper {

    public rjh_soccerVO selectSampleOne(rjh_soccerVO rjh_soccerVO);

    public List<rjh_soccerVO> selectSampleList(rjh_soccerVO rjh_soccerVO);

    public int saveSample(rjh_soccerVO rjh_soccerVO);

    public int deleteSample(rjh_soccerVO rjh_soccerVO);
}
