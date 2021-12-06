package com.cs.study.radioselect.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("deptVO")
public class DeptVO {
    private String deptCode;
    private String deptName;
    private String deptGrp;
    private String createDt;
}

