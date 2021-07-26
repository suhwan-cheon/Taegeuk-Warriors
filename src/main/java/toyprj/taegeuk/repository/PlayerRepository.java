package toyprj.taegeuk.repository;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import toyprj.taegeuk.domain.Player;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class PlayerRepository {

    private final EntityManager em;

    public void save(Player player){
        em.persist(player);
    }

    public Player findOne(Long id){
        return em.find(Player.class, id);
    }

    public List<Player> findAll() {
        return em.createQuery("select p from Player p", Player.class)
                .getResultList();
    }

    public Player findByName(String name) {
        return em.createQuery("select p from Player p where p.name = :name", Player.class)
                .setParameter("name", name)
                .getSingleResult();
    }

//    public List<Player> findAllByString(PlayerSearch playerSearch) {
//        //language=JPAQL
//        String jpql = "select p From Player p";
//
//        //선수명 검색
//        if (StringUtils.hasText(playerSearch.getPlayerName())) {
//            jpql += " where";
//            jpql += " p.name like :name";
//        }
//        TypedQuery<Player> query = em.createQuery(jpql, Player.class)
//                .setMaxResults(1000); //최대 1000건
//        if (StringUtils.hasText(playerSearch.getPlayerName())) {
//            query = query.setParameter("name", playerSearch.getPlayerName());
//        }
//        return query.getResultList();
//    }
}
