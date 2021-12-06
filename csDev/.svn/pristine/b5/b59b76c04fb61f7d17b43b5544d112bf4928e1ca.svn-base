package com.cs.study.sample.controller;

import com.cs.study.sample.service.TestService;
import com.cs.study.sample.vo.TestVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class TestController {

    private final TestService sampleService;

    public TestController(TestService sampleService) {
        this.sampleService = sampleService;
    }

    @GetMapping("/syncTestList")
    public String syncTestList(Model model){

        List<TestVO> selectTestList = sampleService.selectTestList(null);
        model.addAttribute("syncTestList", selectTestList);
        return "sample/testList";
    }

    @PostMapping("/testSave")
    public String testSave(TestVO testVO){
        List<TestVO> testVOList = testVO.getListTestVO();

        for (TestVO vo: testVOList) {
            System.out.println( vo );
        }

        return "redirect:/syncTestList";
    }
}
