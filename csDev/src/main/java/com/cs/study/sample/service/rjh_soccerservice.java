package com.cs.study.sample.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cs.study.sample.mapper.rjh_soccerMapper;
import com.cs.study.sample.vo.rjh_soccerVO;

@Service
public class rjh_soccerservice{
    public final rjh_soccerMapper syncrjh_soccerMapper;

    public rjh_soccerservice(rjh_soccerMapper syncrjh_soccerMapper) {
        this.syncrjh_soccerMapper = syncrjh_soccerMapper;
    }

    public rjh_soccerVO selectSampleOne(rjh_soccerVO rjh_soccerVO){
        return syncrjh_soccerMapper.selectSampleOne(rjh_soccerVO);
    }

    public List<rjh_soccerVO> selectSampleList(rjh_soccerVO rjh_soccerVO) {
        return syncrjh_soccerMapper.selectSampleList(rjh_soccerVO);
    }

    public int saveSample(rjh_soccerVO rjh_soccerVO) {
        return syncrjh_soccerMapper.saveSample(rjh_soccerVO);
    }

    public int deleteSample(rjh_soccerVO rjh_soccerVO) {
        return syncrjh_soccerMapper.deleteSample(rjh_soccerVO);
    }
}
