package com.cs.study.commcode.service;

import com.cs.study.commcode.mapper.CommCodeMapper;
import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.commcode.vo.CommCodeMstVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommCodeService {
    public final CommCodeMapper commCodeMapper;

    public CommCodeService(CommCodeMapper commCodeMapper) {
        this.commCodeMapper = commCodeMapper;
    }

    public CommCodeMstVO selectCommCodeMstOne(CommCodeMstVO commCodeMstVO) {
        return commCodeMapper.selectCommCodeMstOne(commCodeMstVO);
    }

    public List<CommCodeMstVO> selectCommCodeMstList(CommCodeMstVO commCodeMstVO) {
        return commCodeMapper.selectCommCodeMstList(commCodeMstVO);
    }

    public int insertCommCodeMst(CommCodeMstVO commCodeMstVO) {
        commCodeMstVO.setCreateProgram("CommCodeService");
        commCodeMstVO.setUpdateProgram("CommCodeService");
        return commCodeMapper.insertCommCodeMst(commCodeMstVO);
    }

    public int updateCommCodeMst(CommCodeMstVO commCodeMstVO) {
        commCodeMstVO.setCreateProgram("CommCodeService");
        commCodeMstVO.setUpdateProgram("CommCodeService");
        return commCodeMapper.updateCommCodeMst(commCodeMstVO);
    }

    public int deleteCommCodeMst(CommCodeMstVO commCodeMstVO) {
        commCodeMstVO.setCreateProgram("CommCodeService");
        commCodeMstVO.setUpdateProgram("CommCodeService");
        return commCodeMapper.deleteCommCodeMst(commCodeMstVO);
    }



    public CommCodeDtlVO selectCommCodeDtlOne(CommCodeDtlVO commCodeDtlVO) {
        return commCodeMapper.selectCommCodeDtlOne(commCodeDtlVO);
    }

    public List<CommCodeDtlVO> selectCommCodeDtlList(CommCodeDtlVO commCodeDtlVO) {
        return commCodeMapper.selectCommCodeDtlList(commCodeDtlVO);
    }

    public int insertCommCodeDtl(CommCodeDtlVO commCodeDtlVO) {
        commCodeDtlVO.setCreateProgram("CommCodeService");
        commCodeDtlVO.setUpdateProgram("CommCodeService");
        return commCodeMapper.insertCommCodeDtl(commCodeDtlVO);
    }

    public int updateCommCodeDtl(CommCodeDtlVO commCodeDtlVO) {
        commCodeDtlVO.setCreateProgram("CommCodeService");
        commCodeDtlVO.setUpdateProgram("CommCodeService");
        return commCodeMapper.updateCommCodeDtl(commCodeDtlVO);
    }

    public int deleteCommCodeDtl(CommCodeDtlVO commCodeDtlVO) {
        commCodeDtlVO.setCreateProgram("CommCodeService");
        commCodeDtlVO.setUpdateProgram("CommCodeService");
        return commCodeMapper.deleteCommCodeDtl(commCodeDtlVO);
    }
}
