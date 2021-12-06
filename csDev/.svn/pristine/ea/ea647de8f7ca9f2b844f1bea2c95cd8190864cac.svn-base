package com.cs.study.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.cs.study.sample.vo.CafeMenuVO;

@Mapper
public interface CafeMenuMapper {

   public CafeMenuVO cafeMenuSelectOne(CafeMenuVO cafeMenuVO);
	
	// 카페 메뉴 리스트 조회
    public List<CafeMenuVO> cafeMenuSelectList(CafeMenuVO cafeMenuVO);

    public int cafeMenusave(CafeMenuVO cafeMenuVO);

    public int cafeMenudelete(CafeMenuVO cafeMenuVO);
}
