package br.com.gopark.entity;

import br.com.gopark.enums.Categoria;
import br.com.gopark.enums.Disponibilidade;
import br.com.gopark.enums.Modalidade;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Calendar;

/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "anuncio")
/*Anotação que adiciona a constraint CHECK*/
//@Check(constraints = "categoria IN ('HATCH', 'SEDAN', 'PERUA', 'SUV', 'PICAPE')")
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
    @Column(name = "data", nullable = false)
    private Calendar data;


    //Relacionamentos

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne(fetch = FetchType.LAZY)
    @NotFound(action = NotFoundAction.IGNORE)
    /*Anotação que refencia a coluna da FK*/
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne(fetch = FetchType.LAZY)
    @NotFound(action = NotFoundAction.IGNORE)
    /*Anotação que referencia a coluna da FK*/
    @JoinColumn(name = "id_endereco")
    private Endereco endereco;


    //Mapeamento Bidirecional

    /*Anotação que especifica o tipo de relacionamento:
        - 1º termo (antes do "To") representa a cardinalidade da entidade atual
        - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToOne(mappedBy = "anuncio")
    private Servico servico;


    //TODO ARRUMAR CONSTRUTORES MAP BIDIRECIONAL
    //Construtores

    /*Construtor com todos atributos*/
    public Anuncio(BigDecimal preco, Integer vagas, String descricao, Categoria categoria, Modalidade modalidade, Calendar expiracao, Disponibilidade disponibilidade, String dimensoes, String foto, Usuario usuario, Endereco endereco) {

        this.preco = preco;
        this.vagas = vagas;
        this.descricao = descricao;
        this.categoria = categoria;
        this.modalidade = modalidade;
        this.expiracao = expiracao;
        this.disponibilidade = disponibilidade;
        this.dimensoes = dimensoes;
        this.foto = foto;
        this.usuario = usuario;
        this.endereco = endereco;

    }

    /*Contrutor só com os atributos necessários*/
    public Anuncio(BigDecimal preco, Integer vagas, Categoria categoria, Modalidade modalidade, Disponibilidade disponibilidade, String dimensoes, Usuario usuario, Endereco endereco) {

        this.preco = preco;
        this.vagas = vagas;
        this.categoria = categoria;
        this.modalidade = modalidade;
        this.disponibilidade = disponibilidade;
        this.dimensoes = dimensoes;
        this.usuario = usuario;
        this.endereco = endereco;

    }

    /*Construtor só com id*/
    public Anuncio(Integer id) {

        this.id = id;

    }

    /*Construtor padrão*/
    public Anuncio() {

    }


    //Getters e Setters

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {

        this.id = id;

    }

    public BigDecimal getPreco() {
        return preco;
    }

    public void setPreco(BigDecimal preco) {
        this.preco = preco;
    }

    public Integer getVagas() {
        return vagas;
    }

    public void setVagas(Integer vagas) {
        this.vagas = vagas;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public Modalidade getModalidade() {
        return modalidade;
    }

    public void setModalidade(Modalidade modalidade) {
        this.modalidade = modalidade;
    }

    public Calendar getExpiracao() {
        return expiracao;
    }

    public void setExpiracao(Calendar expiracao) {
        this.expiracao = expiracao;
    }

    public Disponibilidade getDisponibilidade() {
        return disponibilidade;
    }

    public void setDisponibilidade(Disponibilidade disponibilidade) {
        this.disponibilidade = disponibilidade;
    }

    public String getDimensoes() {
        return dimensoes;
    }

    public void setDimensoes(String dimensoes) {
        this.dimensoes = dimensoes;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public Calendar getData() {
        return data;
    }

    //TODO TIRAR NO FUTURO?
    public void setData(Calendar data) {
        this.data = data;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public Servico getServico() {
        return servico;
    }

    public void setServico(Servico servico) {
        this.servico = servico;
    }

}
