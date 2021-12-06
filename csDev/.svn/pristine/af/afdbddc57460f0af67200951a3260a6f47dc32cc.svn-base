package com.cs.study.sample.service;

import java.util.List;


import org.springframework.stereotype.Service;

import com.cs.study.sample.mapper.kyjMapper;
import com.cs.study.sample.mapper.kyjMapper;
import com.cs.study.sample.vo.kyjVO;
import com.cs.study.sample.vo.kyjVO;

@Service
public class kyjService{
    public final kyjMapper kyjMapper;

    public kyjService(kyjMapper kyjMapper) {
        this.kyjMapper = kyjMapper;
    }

    public kyjVO capsuleselect(kyjVO kyjVO){
        return kyjMapper.capsuleselect(kyjVO);
    }

    public List<kyjVO> selectcapsuleList(kyjVO kyjVO) {
        return kyjMapper.selectcapsuleList(kyjVO);
    }

    public int savecapsule(kyjVO kyjVO) {
        return kyjMapper.savecapsule(kyjVO);
    }

    public int deletecapsule(kyjVO kyjVO) {
        return kyjMapper.deletecapsule(kyjVO);
    }
}
