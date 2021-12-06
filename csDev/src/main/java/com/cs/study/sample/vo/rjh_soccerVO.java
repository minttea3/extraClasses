package com.cs.study.sample.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("rjh_soccerVO")
public class rjh_soccerVO{
    private String sPlayer;
    private int sAge;
    private String sTeam;
    private String sPosition;
    private String sCountry;
}
