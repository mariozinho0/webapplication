package br.com.gopark.entity;

import javax.persistence.*;
import java.io.Serializable;

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
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;


    //TODO ARRUMAR CONSTRUTORES MAP BIDIRECIONAL
    //Construtores

    /*Construtor com todos atributos*/
    public Cartao(Integer numero, Integer validade, String descricao, Integer seguranca, String responsavel, Usuario usuario) {

        this.numero = numero;
        this.validade = validade;
        this.descricao = descricao;
        this.seguranca = seguranca;
        this.responsavel = responsavel;
        this.usuario = usuario;

    }

    /*Contrutor só com os atributos necessários*/
    public Cartao(Integer numero, Integer validade, Integer seguranca, String responsavel, Usuario usuario) {

        this.numero = numero;
        this.validade = validade;
        this.seguranca = seguranca;
        this.responsavel = responsavel;
        this.usuario = usuario;

    }

    /*Construtor padrão*/
    public Cartao() {

    }


    //Getters e Setters

    public Integer getId() {
        return id;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public Integer getValidade() {
        return validade;
    }

    public void setValidade(Integer validade) {
        this.validade = validade;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Integer getSeguranca() {
        return seguranca;
    }

    public void setSeguranca(Integer seguranca) {
        this.seguranca = seguranca;
    }

    public String getResponsavel() {
        return responsavel;
    }

    public void setResponsavel(String responsavel) {
        this.responsavel = responsavel;
    }

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
