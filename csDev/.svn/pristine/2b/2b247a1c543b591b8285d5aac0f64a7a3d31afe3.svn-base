package com.cs.study.sample.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cs.study.sample.mapper.SampleMapperlmg;
import com.cs.study.sample.vo.SampleVOlmg;

@Service
public class SampleServicelmg{
    public final SampleMapperlmg syncSampleMapperlmg;

    public SampleServicelmg(SampleMapperlmg syncSampleMapperlmg) {
        this.syncSampleMapperlmg = syncSampleMapperlmg;
    }

    public SampleVOlmg foodselect(SampleVOlmg sampleVO){
        return syncSampleMapperlmg.foodselectOne(sampleVO);
    }

    public List<SampleVOlmg> foodselectList(SampleVOlmg sampleVO) {
        return syncSampleMapperlmg.foodselectList(sampleVO);
    }

    public int foodsave(SampleVOlmg sampleVO) {
        return syncSampleMapperlmg.foodsave(sampleVO);
    }

    public int fooddelete(SampleVOlmg sampleVO) {
        return syncSampleMapperlmg.fooddelete(sampleVO);
    }
}
