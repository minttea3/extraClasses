package com.cs.study.sample.vo;

import lombok.Data;

import org.apache.ibatis.type.Alias;

@Data
@Alias("visitVO")
public class VisitVO{
    private String Country;
    private String city;
    private String vdate1;
}

