package toyprj.taegeuk.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import toyprj.taegeuk.domain.GameResult;
import toyprj.taegeuk.repository.GameResultRepository;

import java.util.List;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class GameResultService {

    private final GameResultRepository gameResultRepository;

    public GameResult findOne(Long gameResultId) {
        return gameResultRepository.findOne(gameResultId);
    }

    public List<GameResult> findGameResults(){
        return gameResultRepository.findAll();
    }
}
