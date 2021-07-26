package toyprj.taegeuk.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import toyprj.taegeuk.domain.Player;
import toyprj.taegeuk.repository.PlayerRepository;
import toyprj.taegeuk.repository.PlayerSearch;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class PlayerService {

    private final PlayerRepository playerRepository;

    @Transactional
    public void join(Player player) {
        //validateDuplicatePlayer(player);
        playerRepository.save(player);
    }

//    private void validateDuplicatePlayer(Player player){
//        List<Player> findPlayers = playerRepository.findByName(player.getName());
//    }

    public Player findByName(String playerName) {
        return playerRepository.findByName(playerName);
    }

    public List<Player> findPlayers() {
        return playerRepository.findAll();
    }

    public Player findOne(Long playerId){
        return playerRepository.findOne(playerId);
    }

//    //검색
//    public List<Player> findOrders(PlayerSearch playerSearch) {
//        return playerRepository.findAllByString(playerSearch);
//    }
}
