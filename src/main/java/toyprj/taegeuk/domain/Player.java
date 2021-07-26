package toyprj.taegeuk.domain;

import lombok.Getter;
import lombok.Setter;
import toyprj.taegeuk.domain.sport.Sport;

import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

import static javax.persistence.FetchType.LAZY;

@Entity
@Table(name = "player")
@Getter @Setter
public class Player {

    @Id @GeneratedValue
    @Column(name = "player_id")
    private Long id;

    private String name;

    private Long age;

    private Long height;

    private Long weight;

    private String sex;

    @OneToMany(mappedBy = "player", cascade = CascadeType.ALL)
    private List<GameResult> results = new ArrayList<>();

    @ManyToOne(fetch = LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "sport_id")
    private Sport sport;
}
