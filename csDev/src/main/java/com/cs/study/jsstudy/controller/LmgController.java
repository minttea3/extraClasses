package com.cs.study.jsstudy.controller;

import com.cs.study.sample.service.SampleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cs.study.sample.service.SampleService;
import com.cs.study.sample.vo.SampleVO;

@Controller
public class LmgController {
	
    private final SampleService sampleService;

    public LmgController(SampleService sampleService) {
        this.sampleService = sampleService;
    }
	
	@GetMapping("/jsstudy/lmg")
    public String syncSampleList(Model model, SampleVO sampleVO){

        return "jsstudy/lmg";
    }
	
}
