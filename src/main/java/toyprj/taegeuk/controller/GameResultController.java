package toyprj.taegeuk.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import toyprj.taegeuk.domain.GameResult;
import toyprj.taegeuk.service.GameResultService;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class GameResultController {

    private final GameResultService gameResultService;

    @GetMapping("/medal")
    public String createForm(Model model) {

        List<GameResult> results = gameResultService.findGameResults();
        model.addAttribute("results", results);
        return "medal/medalList";
    }
}
