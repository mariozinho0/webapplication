package br.com.gopark.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "cartao")
public class Cartao {

    //Atributos

    /*Anotação que diz o atributo que representa a PK da tabela*/
    @Id
    /*Anotação que passa os parâmetros para criação de SEQUENCE*/
    @SequenceGenerator(name = "cartao", sequenceName = "cartao_seq", allocationSize = 1)
    /*Anotação que gera uma SEQUENCE através de um padrão @SequenceGenerator*/
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "cartao")
    /*Anotação que define as características da coluna*/
    @Column(name = "id", nullable = false, length = 8)
    private Integer id;

    /*Anotação que define as características da coluna*/
    @Column(name = "numero", nullable = false, length = 16)
    private Integer numero;

    /*Anotação que define as características da coluna*/
    @Column(name = "validade", nullable = false, length = 4)
    private Integer validade;

    /*Anotação que define as características da coluna*/
    @Column(name = "descricao", length = 20)
    private String descricao;

    /*Anotação que define as características da coluna*/
    @Column(name = "seguranca", nullable = false, length = 3)
    private Integer seguranca;

    /*Anotação que define as características da coluna*/
    @Column(name = "responsavel", nullable = false, length = 30)
    private String responsavel;


    //Relacionamentos

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne
    /*Anotação que referencia a coluna da FK*/
    @JoinColumn(name = "id_usuario", updatable = false)
    private Usuario usuario;


}
