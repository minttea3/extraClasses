package com.cs.study.radioselect.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("radioSelectVO")
public class RadioSelectVO {
    private int seq;
    private String userName;
    private String radio1;
    private String radio2;
    private String select1;
    private String select2;
    private String createDt;
    private String updateDt;
}

