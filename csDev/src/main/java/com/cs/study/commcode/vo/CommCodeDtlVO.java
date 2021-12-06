package com.cs.study.commcode.vo;

import com.cs.study.common.vo.CommonVO;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.ibatis.type.Alias;

@Getter
@Setter
@ToString
@Alias("commCodeDtlVO")
public class CommCodeDtlVO extends CommonVO {
    private String mstCd;
    private String dtlCd;
    private String dtlNm;
    private String useYn;
    private String codeGrp;
    private String etc1;
    private String etc2;
    private String etc3;
    private String etc4;
    private String etc5;
}
    
