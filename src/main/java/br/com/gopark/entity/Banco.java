package br.com.gopark.entity;

import br.com.gopark.enums.TipoConta;

import javax.persistence.*;

/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "banco")
public class Banco {

    //Atributos

    /*Anotação que diz o atributo que representa a PK da tabela*/
    @Id
    /*Anotação que passa os parâmetros para criação de SEQUENCE*/
    @SequenceGenerator(name = "banco", sequenceName = "banco_seq", allocationSize = 1)
    /*Anotação que gera uma SEQUENCE através de um padrão @SequenceGenerator*/
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "banco")
    /*Anotação que define as características da coluna*/
    @Column(name = "id", nullable = false, length = 8)
    private Integer id;

    /*Anotação que define as características da coluna*/
    @Column(name = "agencia", nullable = false, length = 4)
    private Integer agencia;

    /*Anotação que define as características da coluna*/
    @Column(name = "banco", nullable = false, length = 4)
    private Integer banco;

    /*Anotação que define as características da coluna*/
    @Column(name = "conta", nullable = false, length = 6)
    private Integer conta;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "tipo", nullable = false, length = 2)
    private TipoConta tipo;


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
    public Banco(Integer agencia, Integer banco, Integer conta, TipoConta tipo, Usuario usuario) {

        this.agencia = agencia;
        this.banco = banco;
        this.conta = conta;
        this.tipo = tipo;
        this.usuario = usuario;

    }

    /*Construtor padrão*/
    public Banco() {

    }


    //Getters e Setters

    public Integer getId() {
        return id;
    }

    public Integer getAgencia() {
        return agencia;
    }

    public void setAgencia(Integer agencia) {
        this.agencia = agencia;
    }

    public Integer getBanco() {
        return banco;
    }

    public void setBanco(Integer banco) {
        this.banco = banco;
    }

    public Integer getConta() {
        return conta;
    }

    public void setConta(Integer conta) {
        this.conta = conta;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

}
