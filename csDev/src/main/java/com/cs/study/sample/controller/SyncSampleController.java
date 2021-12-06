package com.cs.study.sample.controller;

import com.cs.study.sample.service.SampleService;
import com.cs.study.sample.vo.SampleVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SyncSampleController {

    private final SampleService sampleService;

    public SyncSampleController(SampleService sampleService) {
        this.sampleService = sampleService;
    }

    @GetMapping("/syncSampleList")
    public String syncSampleList(Model model, SampleVO sampleVO){

        List<SampleVO> selectSampleList = sampleService.selectSampleList(sampleVO);
        model.addAttribute("syncSampleList", selectSampleList);
        model.addAttribute("sampleVO", sampleVO);
        return "sample/syncSample/syncSampleList";
    }

    @GetMapping("/syncSampleForm")
    public String syncSampleForm(Model model, SampleVO sampleVO){
        if (!StringUtils.isEmpty( sampleVO.getUserId() )){
            SampleVO selectSample = sampleService.selectSampleOne(sampleVO);
            model.addAttribute("sampleVO", selectSample);
        }
        return "sample/syncSample/syncSampleForm";
    }

    @PostMapping("/syncSampleFormSave")
    public String syncSampleFormSave(Model model, SampleVO sampleVO, @RequestParam(value="action", required=true) String action){
        if ( "insert".equals(action) ){
            int insertCnt = sampleService.insertSample(sampleVO);
        }else if ( "update".equals(action) ){
            int updateCnt = sampleService.updateSample(sampleVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = sampleService.deleteSample(sampleVO);
        }
        return "redirect:/syncSampleList";
    }
}
