package toyprj.taegeuk.repository;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import toyprj.taegeuk.domain.GameResult;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class GameResultRepository {

    private final EntityManager em;

    public void save(GameResult gameResult) {
        em.persist(gameResult);
    }

    public GameResult findOne(Long id){
        return em.find(GameResult.class, id);
    }

    public List<GameResult> findAll() {
        return em.createQuery("select g from GameResult g", GameResult.class)
                .getResultList();
    }
}
