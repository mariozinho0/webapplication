package br.com.gopark.entity;

import br.com.gopark.enums.Aprovacao;
import br.com.gopark.enums.Categoria;
import br.com.gopark.enums.Marca;
import br.com.gopark.enums.TipoVeiculo;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "veiculo")
public class Veiculo {

    //Atributos

    /*Anotação que diz o atributo que representa a PK da tabela*/
    @Id
    /*Anotação que passa os parâmetros para criação de SEQUENCE*/
    @SequenceGenerator(name = "veiculo", sequenceName = "veiculo_seq", allocationSize = 1)
    /*Anotação que gera uma SEQUENCE através de um padrão @SequenceGenerator*/
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "veiculo")
    /*Anotação que define as características da coluna*/
    @Column(name = "id", nullable = false, length = 8)
    private Integer id;

    /*Anotação que define as características da coluna*/
    @Column(name = "modelo", nullable = false, length = 20)
    private String modelo;

    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "marca", nullable = false, length = 15)
    private Marca marca;

    /*Anotação que define as características da coluna*/
    @Column(name = "placa", nullable = false, length = 7)
    private String placa;

    @Column(name = "ano", nullable = false, length = 4)
    private String ano;

    /*Anotação que define as características da coluna*/
    @Column(name = "cor", nullable = false, length = 15)
    private String cor;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "categoria", nullable = false, length = 15)
    private Categoria categoria;

    /*Anotação que define as características da coluna*/
    @Column(name = "documento", length = 120, unique = true)
    private String documento;

    /*Anotação que define as características da coluna*/
    @Column(name = "foto", length = 120)
    private String foto;

    /*Anotação que define as características da coluna*/
    @Column(name = "habilitacao", length = 120, unique = true)
    private String habilitacao;

    @Enumerated(EnumType.STRING)
    @Column(name = "aprovacao", length = 10)
    private Aprovacao aprovacao;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "veiculo", nullable = false, length = 5)
    private TipoVeiculo veiculo;


    //Relacionamentos

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne
    /*Anotação que refencia a coluna da FK*/
    @JoinColumn(name = "id_usuario", updatable = false)
    @JsonBackReference(value = "usuario")
    private Usuario usuario;


    //Mapeamento Bidirecional

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "veiculo")
    @JsonManagedReference(value = "veiculo")
    private List<Agendamento> agendamentos;

}
