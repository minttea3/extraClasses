package com.cs.study.sample.controller.rjh;

import com.cs.study.sample.service.rjh_soccerservice;
import com.cs.study.sample.vo.rjh_soccerVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SyncSampleControllerRjh2 {

    private final rjh_soccerservice rjh_soccerservice;

    public SyncSampleControllerRjh2(rjh_soccerservice rjh_soccerservice) {
        this.rjh_soccerservice = rjh_soccerservice;
    }

    @GetMapping("/syncSampleListRjh2")
    public String syncSampleList(Model model, rjh_soccerVO rjh_soccerVO){

        List<rjh_soccerVO> selectSampleList = rjh_soccerservice.selectSampleList(rjh_soccerVO);
        model.addAttribute("syncSampleList", selectSampleList);
        model.addAttribute("rjh_soccerVO", rjh_soccerVO);
        System.out.println("Intellij Commit Test");
        return "sample/syncSampleRjh/syncSampleListRjh2";
    }

    @GetMapping("/syncSampleFormRjh2")
    public String syncSampleForm(Model model, rjh_soccerVO rjh_soccerVO){
        if (!StringUtils.isEmpty( rjh_soccerVO.getSPlayer() )){
            rjh_soccerVO selectSample = rjh_soccerservice.selectSampleOne(rjh_soccerVO);
            model.addAttribute("rjh_soccerVO", selectSample);
        }
        return "sample/syncSampleRjh/syncSampleFormRjh2";
    }

    @PostMapping("/syncSampleFormSaveRjh2")
    public String syncSampleFormSave(Model model, rjh_soccerVO rjh_soccerVO, @RequestParam(value="action", required=true) String action){
        if ( "save".equals(action) ){
            int saveCnt = rjh_soccerservice.saveSample(rjh_soccerVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = rjh_soccerservice.deleteSample(rjh_soccerVO);
        }
        return "redirect:/syncSampleListRjh2";
    }
}
