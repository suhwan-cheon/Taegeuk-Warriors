package toyprj.taegeuk.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import toyprj.taegeuk.domain.Player;
import toyprj.taegeuk.service.PlayerService;

@Controller
@RequiredArgsConstructor
@Slf4j
public class HomeController {

    private final PlayerService playerService;

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @PostMapping("/player/find")
    public String create(PlayerForm pf, Model model){
        Player player = playerService.findByName(pf.getName());
        model.addAttribute("player", player);
        return "player/playerInfo";
    }

}
