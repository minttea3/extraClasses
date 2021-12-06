package com.cs.study.jsstudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cs.study.sample.service.SampleService;
import com.cs.study.sample.vo.SampleVO;

@Controller
public class BsyController {
	private final SampleService sampleService;

    public BsyController(SampleService sampleService) {
        this.sampleService = sampleService;
    }

    @GetMapping("/jsstudy/bsy")
    public String syncSampleList(Model model, SampleVO sampleVO){
        return "jsstudy/bsy";
    }
}
