package com.cs.study.sample.controller.lmg;

import com.cs.study.sample.service.SampleServicelmg;
import com.cs.study.sample.vo.SampleVOlmg;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SyncSampleControllerlmg2 {

    private final SampleServicelmg sampleService;

    public SyncSampleControllerlmg2(SampleServicelmg sampleService) {
        this.sampleService = sampleService;
    }

    @GetMapping("/syncSampleListLmg2")
    public String syncSampleList(Model model, SampleVOlmg sampleVO){

        List<SampleVOlmg> selectSampleList = sampleService.foodselectList(sampleVO);
        model.addAttribute("syncSampleList", selectSampleList);
        model.addAttribute("sampleVOlmg", sampleVO);

        return "sample/syncSampleLmg/syncSampleListLmg2";
    }
    
    @GetMapping("/syncSampleFormLmg2")
    public String syncSampleForm(Model model, SampleVOlmg sampleVO){
        if (!StringUtils.isEmpty( sampleVO.getFoodName() )){
            SampleVOlmg selectSample = sampleService.foodselect(sampleVO);
            model.addAttribute("sampleVOlmg", selectSample);
        }
        return "sample/syncSampleLmg/syncSampleFormLmg2";
    }


    @PostMapping("/syncSampleFormSaveLmg2")
    public String syncSampleFormSave(Model model, SampleVOlmg sampleVO, @RequestParam(value="action", required=true) String action){
        if ( "save".equals(action) ){
            int saveCnt = sampleService.foodsave(sampleVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = sampleService.fooddelete(sampleVO);
        }
        return "redirect:/syncSampleListLmg2";
    }
    
    
    
    
}
