package com.cs.study.jsstudy.controller;
import com.cs.study.sample.service.SampleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cs.study.sample.service.SampleService;
import com.cs.study.sample.vo.SampleVO;

@Controller
public class KejController {
	
    private final SampleService sampleService;

    public KejController(SampleService sampleService) {
        this.sampleService = sampleService;
    }
	
	@GetMapping("/jsstudy/kej")
    public String syncSampleList(Model model, SampleVO sampleVO){

        return "jsstudy/kej";
    }
	
}
