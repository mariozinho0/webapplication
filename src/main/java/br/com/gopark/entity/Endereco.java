package br.com.gopark.entity;

import br.com.gopark.enums.Estado;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.util.List;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "endereco")
public class Endereco {

    //Atributos

    /*Anotação que diz o atributo que representa a PK da tabela*/
    @Id
    /*Anotação que passa os parâmetros para criação de SEQUENCE*/
    @SequenceGenerator(name = "endereco", sequenceName = "endereco_seq", allocationSize = 1)
    /*Anotação que gera uma SEQUENCE através de um padrão @SequenceGenerator*/
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "endereco")
    /*Anotação que define as características da coluna*/
    @Column(name = "id", nullable = false, length = 8, updatable = false)
    private Integer id;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "estado", nullable = false, length = 2)
    private Estado estado;

    /*Anotação que define as características da coluna*/
    @Column(name = "cidade", nullable = false, length = 25)
    private String cidade;

    /*Anotação que define as características da coluna*/
    @Column(name = "bairro", nullable = false, length = 30)
    private String bairro;

    /*Anotação que define as características da coluna*/
    @Column(name = "endereco", nullable = false, length = 60)
    private String endereco;

    /*Anotação que define as características da coluna*/
    @Column(name = "cep", nullable = false, length = 8)
    private Integer cep;

    /*Anotação que define as características da coluna*/
    @Column(name = "comprovante", length = 120, unique = true)
    private String comprovante;

    /*Anotação que define as características da coluna*/
    @Column(name = "complemento", length = 45)
    private String complemento;

    /*Anotação que define as características da coluna*/
    @Column(name = "numero", nullable = false, length = 6)
    private Integer numero;


    //Relacionamentos

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne(fetch = FetchType.LAZY)
    @NotFound(action = NotFoundAction.IGNORE)
    /*Anotação que referencia a coluna da FK*/
    @JoinColumn(name = "id_usuario", updatable = false)
    @Fetch(FetchMode.JOIN)
    @JsonBackReference(value = ("usuario"))
    private Usuario usuario;


    //Mapeamento Bidirecional

    /*Anotação que especifica o tipo de relacionamento:
        - 1º termo (antes do "To") representa a cardinalidade da entidade atual
        - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "endereco")
    @JsonManagedReference(value = "endereco")
    private List<Anuncio> anuncios;

}
