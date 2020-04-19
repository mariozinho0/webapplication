package br.com.gopark.entity;

import br.com.gopark.enums.Status;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Calendar;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "agendamento")
public class Agendamento {

    //Atributos

    /*Anotação que diz o atributo que representa a PK da tabela*/
    @Id
    /*Anotação que passa os parâmetros para criação de SEQUENCE*/
    @SequenceGenerator(name = "agendamento", sequenceName = "agendamento_seq", allocationSize = 1)
    /*Anotação que gera uma SEQUENCE através de um padrão @SequenceGenerator*/
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "agendamento")
    /*Anotação que define as características da coluna*/
    @Column(name = "id", nullable = false, length = 8)
    private Integer id;


    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "data", nullable = false)
    private Calendar data;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 10)
    private Status status;


    //Relacionamentos

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne
    /*Anotação que referencia a coluna da FK*/
    @JoinColumn(name = "id_veiculo")
    //@JsonManagedReference(value = "veiculo") //TODO TEM BOSTA NESSES JSON ANOTATIONS, TA SUMINDO A PROPRIEDADE, CHECAR TODOS
    @JsonBackReference(value = "veiculo") //TODO ESSE ESTA FUNCIONAL PARA POST NA API
    private Veiculo veiculo;

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToOne
    /*Anotação que referencia a coluna da FK*/
    @JoinColumn(name = "id_anuncio")
    private Anuncio anuncio;


    //Mapeamento Bidirecional

    @OneToOne(mappedBy = "agendamento")
    private Registro registro;

}
