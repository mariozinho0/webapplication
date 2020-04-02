package br.com.gopark.entity;

import br.com.gopark.enums.Categoria;
import br.com.gopark.enums.Disponibilidade;
import br.com.gopark.enums.Modalidade;
import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Calendar;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "anuncio")
public class Anuncio {

    //Atributos

    /*Anotação que diz o atributo que representa a PK da tabela*/
    @Id
    /*Anotação que passa os parâmetros para criação de SEQUENCE*/
    @SequenceGenerator(name = "anuncio", sequenceName = "anuncio_seq", allocationSize = 1)
    /*Anotação que gera uma SEQUENCE através de um padrão @SequenceGenerator*/
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "anuncio")
    /*Anotação que define as características da coluna*/
    @Column(name = "id", nullable = false, length = 8)
    private Integer id;

    /*Anotação que define as características da coluna*/
    @Column(name = "preco", nullable = false, length = 6, precision = 2)
    private BigDecimal preco;

    /*Anotação que define as características da coluna*/
    @Column(name = "vagas", length = 2)
    private Integer vagas;

    /*Anotação que define as características da coluna*/
    @Column(name = "descricao", length = 200)
    private String descricao;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "categoria", length = 15)
    private Categoria categoria;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "modalidade", nullable = false, length = 15)
    private Modalidade modalidade;

    /*Anotação que indica qual tipo de dado temporal será armazenado*/
    @Temporal(TemporalType.TIMESTAMP)
    /*Anotação que define as características da coluna*/
    @Column(name = "expiracao")
    private Calendar expiracao;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "disponibilidade", nullable = false, length = 15)
    private Disponibilidade disponibilidade;

    /*Anotação que define as características da coluna*/
    @Column(name = "dimensoes", nullable = false, length = 8)
    private String dimensoes;

    /*Anotação que define as características da coluna*/
    @Column(name = "foto", length = 120)
    private String foto;

    /*Anotação que captura a data do sistema no instante do armazenamento do banco*/
    @CreationTimestamp
    /*Anotação que indica qual tipo de dado temporal será armazenado*/
    @Temporal(TemporalType.DATE)
    /*Anotação que define as características da coluna*/
    @Column(name = "data", nullable = false, updatable = false)
    private Calendar data;


    //Relacionamentos

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne(fetch = FetchType.LAZY)
    @NotFound(action = NotFoundAction.IGNORE)
    /*Anotação que refencia a coluna da FK*/
    @JoinColumn(name = "id_usuario", updatable = false)
    @JsonBackReference
    private Usuario usuario;

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    @NotFound(action = NotFoundAction.IGNORE)
    /*Anotação que referencia a coluna da FK*/
    @JoinColumn(name = "id_endereco")
    @JsonBackReference
    private Endereco endereco;


    //Mapeamento Bidirecional

    /*Anotação que especifica o tipo de relacionamento:
        - 1º termo (antes do "To") representa a cardinalidade da entidade atual
        - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToOne(mappedBy = "anuncio")
    private Agendamento agendamento;


}
