package com.cs.study.sample.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cs.study.sample.mapper.CafeMenuMapper;
import com.cs.study.sample.vo.CafeMenuVO;

@Service
public class CafeMenuService{
    public final CafeMenuMapper syncCafeMenuMapper; //자바 파일 -> CafeMenuMapper.java 임포트함

    public CafeMenuService(CafeMenuMapper syncCafeMenuMapper) { // 매퍼 파일과 쿼리 매퍼 파일 연결 한듯.
        this.syncCafeMenuMapper = syncCafeMenuMapper;
    }
    public CafeMenuVO cafeMenuSelectListOne(CafeMenuVO cafeMenuVO){
        return syncCafeMenuMapper.cafeMenuSelectOne(cafeMenuVO);
    }
    public List<CafeMenuVO> cafeMenuSelectList(CafeMenuVO cafeMenuVO){
    	// 매퍼 자바 파일에 메소스 호출 
    	System.out.println("뭐가 담겨?"+syncCafeMenuMapper.cafeMenuSelectList(cafeMenuVO));
    	System.out.println("vo"+cafeMenuVO);
    	return syncCafeMenuMapper.cafeMenuSelectList(cafeMenuVO);
    }
    public int cafeMenusave(CafeMenuVO cafeMenuVO) {
        return syncCafeMenuMapper.cafeMenusave(cafeMenuVO);
    }

    public int cafeMenudelete(CafeMenuVO cafeMenuVO) {
        return syncCafeMenuMapper.cafeMenudelete(cafeMenuVO);
    }
}
