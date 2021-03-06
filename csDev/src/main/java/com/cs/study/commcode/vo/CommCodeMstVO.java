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
@Alias("commCodeMstVO")
public class CommCodeMstVO extends CommonVO {
    private String mstCd;
    private String mstNm;
    private String useYn;
}
    
