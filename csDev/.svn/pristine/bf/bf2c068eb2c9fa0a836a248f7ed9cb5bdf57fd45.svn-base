package com.cs.study.sample.service;

import java.util.List;


import org.springframework.stereotype.Service;

import com.cs.study.sample.mapper.VisitMapper;
import com.cs.study.sample.vo.VisitVO;

@Service
public class VisitService{
    public final VisitMapper syncSampleMapper;

    public VisitService(VisitMapper syncVisitMapper) {
        this.syncSampleMapper = syncVisitMapper;
    }

    public VisitVO selectVisitOne(VisitVO visitVO){
        return syncSampleMapper.selectVisitOne(visitVO);
    }

    public List<VisitVO> selectVisitList(VisitVO visitVO) {
        return syncSampleMapper.selectVisitList(visitVO);
    }

    public int saveVisit(VisitVO visitVO) {
        return syncSampleMapper.saveVisit(visitVO);
    }

    public int deleteVisit(VisitVO visitVO) {
        return syncSampleMapper.deleteVisit(visitVO);
    }
}
