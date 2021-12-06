package com.cs.study.radioselect.service;

import com.cs.study.radioselect.mapper.DeptMapper;
import com.cs.study.radioselect.vo.DeptVO;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeptService {
    public final DeptMapper deptMapper;

    public DeptService(DeptMapper deptMapper) {
        this.deptMapper = deptMapper;
    }

    public DeptVO selectDeptOne(DeptVO DeptVO){
        return deptMapper.selectDeptOne(DeptVO);
    }

    public List<DeptVO> selectDeptList(DeptVO DeptVO) {
        return deptMapper.selectDeptList(DeptVO);
    }

    public int insertDept(DeptVO DeptVO) {
        return deptMapper.insertDept(DeptVO);
    }

    public int updateDept(DeptVO DeptVO) {
        return deptMapper.updateDept(DeptVO);
    }

    public int deleteDept(DeptVO DeptVO) {
        return deptMapper.deleteDept(DeptVO);
    }
}
