package com.cs.study.sample.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cs.study.sample.mapper.JswMapper;
import com.cs.study.sample.vo.JswBaseballVO;


@Service
public class JswService{
    public final JswMapper JswMapper;

    public JswService(JswMapper JswMapper) {
        this.JswMapper = JswMapper;
    }

    public JswBaseballVO Baseballselect(JswBaseballVO JswBaseballVO){
        return JswMapper.Baseballselect(JswBaseballVO);
    }

    public List<JswBaseballVO> selectBaseballList(JswBaseballVO jswBaseballVO) {
        return JswMapper.selectBaseballList(jswBaseballVO);
    }

    public int saveBaseball(JswBaseballVO JswBaseballVO) {
        return JswMapper.saveBaseball(JswBaseballVO);
    }

    public int deleteBaseball(JswBaseballVO JswBaseballVO) {
        return JswMapper.deleteBaseball(JswBaseballVO);
    }
}
