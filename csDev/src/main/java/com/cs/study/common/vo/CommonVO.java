package com.cs.study.common.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("commonVO")
public class CommonVO {
    private String createUser;
    private String createProgram;
    private String createDt;
    private String updateUser;
    private String updateProgram;
    private String updateDt;
}
    
