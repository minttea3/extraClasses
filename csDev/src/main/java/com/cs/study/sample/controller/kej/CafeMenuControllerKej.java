package com.cs.study.sample.controller.kej;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cs.study.sample.service.CafeMenuService;
import com.cs.study.sample.vo.CafeMenuVO;

@Controller
public class CafeMenuControllerKej {

    private final CafeMenuService cafeMenuService;

    public CafeMenuControllerKej(CafeMenuService cafeMenuService) {
        this.cafeMenuService = cafeMenuService;
    }

    @GetMapping("/cafeMenuListKej")
    public String cafeMenuSelectList(Model model, CafeMenuVO cafeMenuVO){

        List<CafeMenuVO> cafeMenuList = cafeMenuService.cafeMenuSelectList(cafeMenuVO);
        model.addAttribute("cafeMenuList", cafeMenuList);
        model.addAttribute("cafeMenuVO", cafeMenuVO);

        return "sample/syncSampleKej/cafeMenuListKej";
    }
    
    @GetMapping("/cafeMenuFormKej")
    public String syncSampleForm(Model model, CafeMenuVO cafeMenuVO){
        if (!StringUtils.isEmpty( cafeMenuVO.getCCode() )){
        	CafeMenuVO selectSample = cafeMenuService.cafeMenuSelectListOne(cafeMenuVO);
            model.addAttribute("cafeMenuVO", selectSample);
        }
        return "sample/syncSampleKej/cafeMenuFormKej";
    }

    @PostMapping("/cafeMenuFormSaveKej")
    public String syncSampleFormSave(Model model, CafeMenuVO cafeMenuVO, @RequestParam(value="action", required=true) String action){
        if ( "save".equals(action) ){
            int saveCnt = cafeMenuService.cafeMenusave(cafeMenuVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = cafeMenuService.cafeMenudelete(cafeMenuVO);
        }
        return "redirect:/cafeMenuListKej";
    }
}
