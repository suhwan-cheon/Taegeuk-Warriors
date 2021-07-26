package toyprj.taegeuk.repository;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import toyprj.taegeuk.domain.Player;
import toyprj.taegeuk.domain.sport.Sport;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class SportRepository {

    private final EntityManager em;

    public void save(Sport sport) {
        em.persist(sport);
    }

    public Sport findOne(Long id) {
        return em.find(Sport.class, id);
    }

    public List<Player> findMatchedPlayers(Long id) {
        Sport sport = em.find(Sport.class, id);
        return sport.getPlayerList();
    }

    public List<Sport> findAll() {
        return em.createQuery("select s from Sport s", Sport.class)
                .getResultList();
    }


}
