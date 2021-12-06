package com.cs.study.sample.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.cs.study.sample.vo.VisitVO;

@Mapper
public interface VisitMapper {

    public VisitVO selectVisitOne(VisitVO visitVO);

    public List<VisitVO> selectVisitList(VisitVO visitVO);

    public int saveVisit(VisitVO visitVO);

    public int deleteVisit(VisitVO visitVO);
}
