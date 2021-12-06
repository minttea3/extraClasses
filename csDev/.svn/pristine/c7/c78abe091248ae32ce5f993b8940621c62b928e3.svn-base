package com.cs.study.sample.controller.bsy;

import com.cs.study.sample.service.BsyGameService;
import com.cs.study.sample.service.SampleService;
import com.cs.study.sample.vo.BsyGameVO;
import com.cs.study.sample.vo.SampleVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SyncSampleControllerBsy {

    private final SampleService sampleService;
    

    public SyncSampleControllerBsy(SampleService sampleService) {
        this.sampleService = sampleService;
    }

    @GetMapping("/syncSampleListBsy")
    public String syncSampleList(Model model, SampleVO sampleVO){

        List<SampleVO> selectSampleList = sampleService.selectSampleList(sampleVO);
        model.addAttribute("syncSampleList", selectSampleList);
        model.addAttribute("sampleVO", sampleVO);
        System.out.println("Intellij Commit Test");
        return "sample/syncSampleBsy/syncSampleListBsy";
    }

    @GetMapping("/syncSampleFormBsy")
    public String syncSampleForm(Model model, SampleVO sampleVO){
        if (!StringUtils.isEmpty( sampleVO.getUserId() )){
            SampleVO selectSample = sampleService.selectSampleOne(sampleVO);
            model.addAttribute("sampleVO", selectSample);
        }
        return "sample/syncSampleBsy/syncSampleFormBsy";
    }
}
