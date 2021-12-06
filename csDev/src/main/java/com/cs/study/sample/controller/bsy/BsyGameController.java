package com.cs.study.sample.controller.bsy;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cs.study.sample.service.BsyGameService;
import com.cs.study.sample.service.SampleService;
import com.cs.study.sample.vo.BsyGameVO;
import com.cs.study.sample.vo.CafeMenuVO;

@Controller
public class BsyGameController {

	private final BsyGameService gameService;
	
    public BsyGameController(BsyGameService gameService) {
        this.gameService = gameService;
    }
    
    @GetMapping("/playGameList")
    public String showPlayGameList(Model model, BsyGameVO gameVO) {
    	return "sample/syncSampleBsy/playGameList";
    }
    
//    @GetMapping("/GameListOne")
//    public String syncSampleForm(Model model, BsyGameVO gameVO){
//        if (!StringUtils.isEmpty( gameVO.getId() )){
//        	BsyGameVO selectSample = gameService.getGameListOne(gameVO);
//            model.addAttribute("gameVO", selectSample);
//        }
//        return "sample/syncSampleBsy/playGameList";
//    }
    
    @PostMapping("/playGameAdd")
    public String addPlayGame(Model model, BsyGameVO gameVO, @RequestParam(value="action", required=true) String action) {
    	if ( "save".equals(action) ){
            int saveCnt = gameService.saveGame(gameVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = gameService.deleteGame(gameVO);
        }
    	return "redirect:/playGameList";
    }
}
