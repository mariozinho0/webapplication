package br.com.gopark.entity;

import br.com.gopark.enums.Pagamento;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Calendar;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "registro")
public class Registro { //TODO COLOCAR ANOTACOES DO LOMBOK

    //Atributos

    @Id
    @SequenceGenerator(name = "registro", sequenceName = "registro_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "registro")
    @Column(name = "id", nullable = false, length = 8)
    private Integer id;

    @Column(name = "avaliacao", length = 1)
    private Integer avaliacao;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
//    @Enumerated(EnumType.ORDINAL)
    /*Anotação que define as características da coluna*/
    @Column(name = "total", nullable = false, length = 6)
    private BigDecimal total;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "pagamento", nullable = false, length = 15)
    private Pagamento pagamento;

    /*Anotação que indica qual tipo de dado temporal será armazenado*/
    @Temporal(TemporalType.TIMESTAMP)
    /*Anotação que define as características da coluna*/
    @Column(name = "entrada", nullable = false)
    private Calendar entrada;

    /*Anotação que indica qual tipo de dado temporal será armazenado*/
    @Temporal(TemporalType.TIMESTAMP)
    /*Anotação que define as características da coluna*/
    @Column(name = "saida", nullable = false)
    private Calendar saida;


    //Relacionamentos

    @OneToOne
    @JoinColumn(name = "id_agendamento")
    private Agendamento agendamento;

}
