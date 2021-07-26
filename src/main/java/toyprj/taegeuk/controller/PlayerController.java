package toyprj.taegeuk.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import toyprj.taegeuk.domain.Player;
import toyprj.taegeuk.domain.sport.Fencing;
import toyprj.taegeuk.service.PlayerService;
import toyprj.taegeuk.service.SportService;

@Controller
@RequiredArgsConstructor
@Slf4j
public class PlayerController {

    private final PlayerService playerService;
    private final SportService sportService;

    @GetMapping("/player/new")
    public String createForm(Model model) {
        model.addAttribute("playerForm", new PlayerForm());
        return "player/createPlayerForm";
    }

    @PostMapping("/player/new")
    public String create(@RequestParam("img") MultipartFile files, PlayerForm pf, Model model){
        Player player = new Player();
//        Country country = new Country();
//        country.setName("대한민국");
        Fencing fencing = new Fencing();
        fencing.setName(pf.getSport());
        sportService.join(fencing);

        player.setName(pf.getName());
        player.setAge(pf.getAge());
        player.setSport(fencing);
        player.setSex(pf.getSex());
        player.setHeight(pf.getHeight());
        player.setWeight(pf.getWeight());

        playerService.join(player);
        return "redirect:/";
    }
}
