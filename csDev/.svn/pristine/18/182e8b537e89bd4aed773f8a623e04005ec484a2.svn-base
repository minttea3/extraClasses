package com.cs.study.sample.service;

import java.util.List;
import org.springframework.stereotype.Service;

import com.cs.study.sample.mapper.BsyGameMapper;
import com.cs.study.sample.vo.BsyGameVO;
import com.cs.study.sample.vo.CafeMenuVO;

@Service
public class BsyGameService {
	public final BsyGameMapper gameMapper;
	
	public BsyGameService(BsyGameMapper gameMapper) {
        this.gameMapper = gameMapper;
    }
	
	public List<BsyGameVO> selectSampleList(BsyGameVO gameVO) {
        return gameMapper.selectGameList(gameVO);
    }
	
	public BsyGameVO getGameListOne(BsyGameVO gameVO){
        return gameMapper.getGameListOne(gameVO);
    }
	
	public int saveGame(BsyGameVO gameVO) {
        return gameMapper.saveGame(gameVO);
    }
	
	public int deleteGame(BsyGameVO gameVO) {
        return gameMapper.deleteGame(gameVO);
    }
}
