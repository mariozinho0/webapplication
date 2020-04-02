package br.com.gopark.entity;

import br.com.gopark.enums.Sexo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Calendar;
import java.util.List;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "usuario")
public class Usuario {

    //Atributos

    /*Anotação que diz o atributo que representa a PK da tabela*/
    @Id
    /*Anotação que passa os parâmetros para criação de SEQUENCE*/
    @SequenceGenerator(name = "usuario", sequenceName = "usuario_seq", allocationSize = 1)
    /*Anotação que gera uma SEQUENCE através de um padrão @SequenceGenerator*/
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "usuario")
    /*Anotação que define as características da coluna*/
    @Column(name = "id", nullable = false, length = 8, updatable = false)
    private Integer id;

    /*Anotação que define as características da coluna*/
    @Column(name = "nome", nullable = false, length = 45)
    /*@NotBlank*/
    private String nome;

    /*Anotação que define as características da coluna*/
    @Column(name = "usuario", nullable = false, length = 15, unique = true)
    private String usuario;

    /*Anotação que define as características da coluna*/
    @Column(name = "email", nullable = false, length = 50, unique = true)
    /*@Email*/
    private String email;

    /*Anotação que define as características da coluna*/
    @Column(name = "celular", nullable = false, length = 11, unique = true)
    private Long celular;

    /*Anotação que define as características da coluna*/
    @Column(name = "cpf", nullable = false, length = 11, unique = true)
    /*@CPF*/
    private String cpf;

    /*Anotação que define as características da coluna*/
    @Column(name = "biografia", length = 150)
    private String biografia;

    /*Anotação que define as características da coluna*/
    @Column(name = "foto", length = 150)
    private String foto;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "sexo", nullable = false, length = 1)
    private Sexo sexo;

    /*Anotação que indica qual tipo de dado temporal será armazenado*/
    @Temporal(TemporalType.DATE)
    /*Anotação que define as características da coluna*/
    @Column(name = "nascimento", nullable = false)
    /*Anotação para formatação de data*/
    @DateTimeFormat(pattern = "dd/MM/yyyy") //TODO TIRAR (pattern = "") DEPOIS DE ARRUMAR DEFAULT
    private Calendar nascimento;

    /*Anotação que define as características da coluna*/
    @Column(name = "senha", nullable = false, length = 20)
    private String senha;


    //Mapeamento Bidirecional

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "usuario")
    @JsonManagedReference
    private List<Endereco> enderecos;

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "usuario")
    private List<Veiculo> veiculos;

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "usuario")
    @JsonManagedReference
    private List<Anuncio> anuncios;

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "usuario")
    private List<Banco> bancos;

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "usuario")
    private List<Cartao> cartoes;


}
