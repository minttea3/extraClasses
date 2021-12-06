package com.cs.study.sample.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("jswBaseballVO")
public class JswBaseballVO{
    private String pyName;
    private int pyNum;
    private String pyPopular;
    private String pySal;
    private String pyTeam;
}
