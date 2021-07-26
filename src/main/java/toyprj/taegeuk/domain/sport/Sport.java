package toyprj.taegeuk.domain.sport;

import lombok.Getter;
import lombok.Setter;
import toyprj.taegeuk.domain.Player;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;


@Entity
//단일 테이블 전략 사용
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
//부모 테이블에 선언 (dtype이 관례라고 한다.)
@DiscriminatorColumn(name = "dtype")
@Getter @Setter
public abstract class Sport {

    @Id @GeneratedValue
    @Column(name = "sport_id")
    private Long id;

    private String name;

    //하나의 종목이 여러명의 선수를 포함하고 있다.
    @OneToMany(mappedBy = "sport", cascade = CascadeType.ALL)
    private List<Player> playerList = new ArrayList<>();
}
