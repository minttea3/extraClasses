package com.cs.study.radioselect.controller;

import com.cs.study.radioselect.service.DeptService;
import com.cs.study.radioselect.service.RadioSelectService;
import com.cs.study.radioselect.vo.DeptVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DeptController {

    private final DeptService deptService;
    public DeptController(DeptService deptService) {
        this.deptService = deptService;
    }

    @GetMapping("/radioselect/deptList")
    public String deptList(Model model, DeptVO deptVO){
        return "radioselect/deptList";
    }

    @GetMapping("/selectDeptList")
    @ResponseBody
    public String selectDeptList(@ModelAttribute DeptVO deptVO){

        String rstJson = null;
        try {
            List<DeptVO> selectDeptList = deptService.selectDeptList(deptVO);

            Gson gson = new Gson();
            rstJson = gson.toJson(selectDeptList);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rstJson;
    }

    @PostMapping("/insertDept")
    @ResponseBody
    public String insertDept(@ModelAttribute DeptVO deptVO){
        deptService.insertDept(deptVO);
        return new Gson().toJson(null);
    }

    @PostMapping("/updateDept")
    @ResponseBody
    public String updateDept(@ModelAttribute DeptVO deptVO){
        deptService.updateDept(deptVO);
        return new Gson().toJson(null);
    }

    @PostMapping("/deleteDept")
    @ResponseBody
    public String deleteDept(@ModelAttribute DeptVO deptVO){
        deptService.deleteDept(deptVO);
        return new Gson().toJson(null);
    }

}
