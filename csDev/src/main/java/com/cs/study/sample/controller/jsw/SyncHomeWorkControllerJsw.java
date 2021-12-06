package com.cs.study.sample.controller.jsw;

import com.cs.study.sample.service.JswService;
import com.cs.study.sample.vo.JswBaseballVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SyncHomeWorkControllerJsw {

    private final JswService JswService;

    public SyncHomeWorkControllerJsw(JswService JswService) {
        this.JswService = JswService;
    }

    @GetMapping("/syncBaseBallListJsw")
    public String syncBaseBallList(Model model, JswBaseballVO JswBaseballVO){
    	System.out.println("--------List---------------");
        List<JswBaseballVO> selectSampleList = JswService.selectBaseballList(JswBaseballVO);
        model.addAttribute("syncBaseBallListJsw", selectSampleList);
        model.addAttribute("JswBaseballVO", JswBaseballVO);

        return "sample/syncSampleJsw/syncBaseBallListJsw";
    }
    
    @GetMapping("/syncBaseBallFormJsw")
    public String syncBaseBallForm(Model model, JswBaseballVO JswBaseballVO){
        if (!StringUtils.isEmpty( JswBaseballVO.getPyName() )){
        	JswBaseballVO selectSample = JswService.Baseballselect(JswBaseballVO);
            model.addAttribute("JswBaseballVO", selectSample);
        }
        
        return "sample/syncSampleJsw/syncBaseBallFormJsw";
    }

    @PostMapping("/syncBaseBallSaveJsw")
    public String syncBaseBallFormSave(Model model, JswBaseballVO JswBaseballVO, @RequestParam(value="action", required=true) String action){
        if ( "save".equals(action) ){
            int saveCnt = JswService.saveBaseball(JswBaseballVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = JswService.deleteBaseball(JswBaseballVO);
        }
        return "redirect:/syncBaseBallListJsw";
    }
}
