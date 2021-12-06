package com.cs.study.sample.vo;

import lombok.Data;

import org.apache.ibatis.type.Alias;

@Data
@Alias("kyjVO")
public class kyjVO{
    private String profile;
    private String corporation;
    private String Alliance;
}

