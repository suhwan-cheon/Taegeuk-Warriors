package toyprj.taegeuk.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import toyprj.taegeuk.domain.Player;
import toyprj.taegeuk.domain.sport.Sport;
import toyprj.taegeuk.repository.SportRepository;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class SportService {

    private final SportRepository sportRepository;

    public List<Player> findPlayers(Long id) {
        //스포츠 종목에 해당하는 id를 받아, 해당하는 종목의 선수들 리턴
        return sportRepository.findMatchedPlayers(id);
    }

    @Transactional
    public void join(Sport sport) {
        //validateDuplicatePlayer(player);
        sportRepository.save(sport);
    }
}
