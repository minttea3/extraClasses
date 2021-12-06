package com.cs.study.sample.controller.Wis;

import com.cs.study.sample.service.VisitService;


import com.cs.study.sample.vo.VisitVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class SyncVisitControllerWis {

    private final VisitService visitService;

    public SyncVisitControllerWis(VisitService visitService) {
        this.visitService = visitService;
    }

    @GetMapping("/01visitlist") 
    public String selectVisitList(Model model, VisitVO visitVO){

        List<VisitVO> selectVisitList = visitService.selectVisitList(visitVO);
        model.addAttribute("selectVisitList", selectVisitList);
        model.addAttribute("VisitVO", visitVO);

        return "sample/syncSampleWis/01visitlist"; 
    }
    
    @GetMapping("/01visitlistadd")
    public String syncSampleForm(Model model, VisitVO visitVO){
        if (!StringUtils.isEmpty( visitVO.getCountry() )){
        	VisitVO selectVisitOne = visitService.selectVisitOne(visitVO);
            model.addAttribute("VisitVO", selectVisitOne);
        }
        return "sample/syncSampleWis/01visitlistadd";
    }

    @PostMapping("/01visitlistsaveadd")
    public String syncSampleFormSave(Model model, VisitVO visitVO, @RequestParam(value="action", required=true) String action){
        if ( "save".equals(action) ){
            int saveCnt = visitService.saveVisit(visitVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = visitService.deleteVisit(visitVO);
        }
        return "redirect:/01visitlist";
    }
}




