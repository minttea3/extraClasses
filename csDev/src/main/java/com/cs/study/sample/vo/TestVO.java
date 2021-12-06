package com.cs.study.sample.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Data
@Alias("testVO")
public class TestVO {
    private String input;
    private String rdo;
    private List<TestVO> listTestVO;
}
    
