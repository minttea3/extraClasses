package com.cs.study.commcode.controller;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.cs.study.commcode.service.CommCodeService;
import com.cs.study.commcode.vo.CommCodeDtlVO;
import com.cs.study.commcode.vo.CommCodeMstVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CommCodeController {

    private final CommCodeService commCodeService;

    public CommCodeController(CommCodeService commCodeService) {
        this.commCodeService = commCodeService;
    }

    @GetMapping("/commcode/commCodeMstList")
    public String commCodeMstList(Model model, CommCodeMstVO commCodeMstVO){

        List<CommCodeMstVO> selectCommCodeMstList = commCodeService.selectCommCodeMstList(commCodeMstVO);
        model.addAttribute("commCodeMstList", selectCommCodeMstList);
        model.addAttribute("mstVO", commCodeMstVO);
        return "commcode/commCodeMstList";
    }

    @GetMapping("/commcode/commCodeMstForm")
    public String commCodeMstForm(Model model, CommCodeMstVO commCodeMstVO){
        if (!StringUtils.isEmpty( commCodeMstVO.getMstCd() )){
            CommCodeMstVO selectCommCodeMst = commCodeService.selectCommCodeMstOne(commCodeMstVO);
            model.addAttribute("mstVO", selectCommCodeMst);
        }
        return "commcode/commCodeMstForm";
    }

    @PostMapping("/commcode/commCodeMstFormSave")
    public String commCodeMstFormSave(Model model, CommCodeMstVO commCodeMstVO, @RequestParam(value="action", required=true) String action){
        if ( "insert".equals(action) ){
            int insertCnt = commCodeService.insertCommCodeMst(commCodeMstVO);
        }else if ( "update".equals(action) ){
            int updateCnt = commCodeService.updateCommCodeMst(commCodeMstVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = commCodeService.deleteCommCodeMst(commCodeMstVO);
        }
        return "redirect:/commcode/commCodeMstList";
    }

    
    @GetMapping("/commcode/commCodeDtlList")
    public String commCodeDtlList(Model model, CommCodeDtlVO commCodeDtlVO){

        List<CommCodeDtlVO> selectCommCodeDtlList = commCodeService.selectCommCodeDtlList(commCodeDtlVO);
        model.addAttribute("commCodeDtlList", selectCommCodeDtlList);
        model.addAttribute("dtlVO", commCodeDtlVO);
        return "commcode/commCodeDtlList";
    }

    @GetMapping("/commcode/commCodeDtlForm")
    public String commCodeDtlForm(Model model, CommCodeDtlVO commCodeDtlVO, CommCodeMstVO commCodeMstVO){
        System.out.println("시작하니??????");
        if (!StringUtils.isEmpty( commCodeDtlVO.getDtlCd() )){
            CommCodeDtlVO selectCommCodeDtl = commCodeService.selectCommCodeDtlOne(commCodeDtlVO);
            System.out.println("==================");
            System.out.println("dtlVO:"+selectCommCodeDtl);
            System.out.println("==================");
            model.addAttribute("dtlVO", selectCommCodeDtl);
        }
        //사용유무 컬럼 값이 m002인거 가져오기
        CommCodeDtlVO ccvo = new CommCodeDtlVO();
        ccvo.setMstCd("m002");
        List<CommCodeDtlVO> selectCommCodeDtlList = commCodeService.selectCommCodeDtlList(ccvo);
        model.addAttribute("selectCommCodeDtlList",selectCommCodeDtlList);
        System.out.println("--------------");
        System.out.println("selectCommCodeDtlList"+selectCommCodeDtlList);
        System.out.println("--------------");
//--------------------------------------------------------------------
        //전화번호 셀렉트박스 MOO3
        CommCodeDtlVO aaa = new CommCodeDtlVO();
        aaa.setMstCd("m003");
        List<CommCodeDtlVO> bbb = commCodeService.selectCommCodeDtlList(aaa);
        model.addAttribute("bbb",bbb);

        CommCodeDtlVO ooo = new CommCodeDtlVO();
        ooo.setMstCd("m004");
        List<CommCodeDtlVO> kkk = commCodeService.selectCommCodeDtlList(ooo);
        model.addAttribute("mg",kkk);
//-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
        
        // 마스터 코드 값 가져오기!
        List<CommCodeMstVO> selectCommCodeMstList = commCodeService.selectCommCodeMstList(commCodeMstVO);
        model.addAttribute("selectCommCodeMstList", selectCommCodeMstList);

        // 사용 유무값 가져오기
        CommCodeDtlVO uVo = new CommCodeDtlVO();
        uVo.setMstCd("M0005");
        List<CommCodeDtlVO> uList = commCodeService.selectCommCodeDtlList(uVo);
        model.addAttribute("uList",uList);

        return "commcode/commCodeDtlForm";
    }

    @PostMapping("/commcode/commCodeDtlFormSave")
    public String commCodeDtlFormSave(Model model, CommCodeDtlVO commCodeDtlVO, @RequestParam(value="action", required=true) String action){
        if ( "insert".equals(action) ){
            int insertCnt = commCodeService.insertCommCodeDtl(commCodeDtlVO);
        }else if ( "update".equals(action) ){
            int updateCnt = commCodeService.updateCommCodeDtl(commCodeDtlVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = commCodeService.deleteCommCodeDtl(commCodeDtlVO);
        }
        return "redirect:/commcode/commCodeDtlList";
    }
}
