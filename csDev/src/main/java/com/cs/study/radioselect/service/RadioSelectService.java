package com.cs.study.radioselect.service;

import com.cs.study.radioselect.mapper.RadioSelectMapper;
import com.cs.study.radioselect.vo.RadioSelectVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RadioSelectService {
    public final RadioSelectMapper radioSelectMapper;

    public RadioSelectService(RadioSelectMapper radioSelectMapper) {
        this.radioSelectMapper = radioSelectMapper;
    }

    public RadioSelectVO selectRadioSelectOne(RadioSelectVO radioSelectVO){
        return radioSelectMapper.selectRadioSelectOne(radioSelectVO);
    }

    public List<RadioSelectVO> selectRadioSelectList(RadioSelectVO radioSelectVO) {
        return radioSelectMapper.selectRadioSelectList(radioSelectVO);
    }

    public int insertRadioSelect(RadioSelectVO radioSelectVO) {
        return radioSelectMapper.insertRadioSelect(radioSelectVO);
    }

    public int updateRadioSelect(RadioSelectVO radioSelectVO) {
        return radioSelectMapper.updateRadioSelect(radioSelectVO);
    }

    public int deleteRadioSelect(RadioSelectVO radioSelectVO) {
        return radioSelectMapper.deleteRadioSelect(radioSelectVO);
    }
}
