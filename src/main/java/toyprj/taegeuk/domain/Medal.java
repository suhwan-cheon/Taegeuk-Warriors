package toyprj.taegeuk.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter @Setter
public class Medal {

    @Id @GeneratedValue
    @Column(name = "medal_id")
    private Long id;

    @OneToOne(mappedBy = "medal")
    private GameResult result;

    @Enumerated(EnumType.STRING)
    private MedalColor medalColor;
}
