package br.com.gopark.entity;

import br.com.gopark.enums.Categoria;
import br.com.gopark.enums.TipoVeiculo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "veiculo")
/*Anotação que adiciona a constraint CHECK*/
//@Check(constraints = "tipo IN ('CARRO', 'MOTO')")
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

    /*Anotação que define as características da coluna*/
    @Column(name = "marca", nullable = false, length = 15)
    private String marca;

    /*Anotação que define as características da coluna*/
    @Column(name = "placa", nullable = false, length = 7)
    private String placa;

    /*Anotação que define as características da coluna*/
    @Column(name = "cor", nullable = false, length = 15)
    private String cor;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "categoria", nullable = false, length = 15)
    private Categoria categoria;

    /*Anotação que define as características da coluna*/
    @Column(name = "documento", nullable = false, length = 120, unique = true)
    private String documento;

    /*Anotação que define as características da coluna*/
    @Column(name = "foto", length = 120)
    private String foto;

    /*Anotação que define as características da coluna*/
    @Column(name = "habilitacao", nullable = false, length = 120, unique = true)
    private String habilitacao;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "tipo", nullable = false, length = 15)
    private TipoVeiculo tipo;


    //Relacionamentos

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne
    /*Anotação que refencia a coluna da FK*/
    @JoinColumn(name = "id_usuario")
    private Usuario usuario;


    //Mapeamento Bidirecional

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "veiculo")
    private List<Servico> servicos;


    //TODO ARRUMAR CONSTRUTORES MAP BIDIRECIONAL
    // Construtores

    /*Construtor com todos atributos*/
    public Veiculo(String modelo, String marca, String placa, String cor, Categoria categoria, String documento, String foto, String habilitacao, TipoVeiculo tipoVeiculo) {
        this.modelo = modelo;
        this.marca = marca;
        this.placa = placa;
        this.cor = cor;
        this.categoria = categoria;
        this.documento = documento;
        this.foto = foto;
        this.habilitacao = habilitacao;
        this.tipo = tipoVeiculo;
    }

    /*Contrutor só com os atributos necessários*/
    public Veiculo(String modelo, String marca, String placa, String cor, Categoria categoria, String documento, String habilitacao, TipoVeiculo tipoVeiculo) {
        this.modelo = modelo;
        this.marca = marca;
        this.placa = placa;
        this.cor = cor;
        this.categoria = categoria;
        this.documento = documento;
        this.habilitacao = habilitacao;
        this.tipo = tipoVeiculo;
    }

    /*Construtor só com id*/
    public Veiculo(Integer id) {

        this.id = id;

    }

    /*Construtor com todos atributos*/
    public Veiculo() {

    }


    //Getters e Setters

    public Integer getId() {
        return id;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getHabilitacao() {
        return habilitacao;
    }

    public void setHabilitacao(String habilitacao) {
        this.habilitacao = habilitacao;
    }

    public TipoVeiculo getTipo() {
        return tipo;
    }

    public void setTipo(TipoVeiculo tipoVeiculo) {
        this.tipo = tipoVeiculo;
    }

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

    public List<Servico> getServicos() {
        return servicos;
    }

    public void setServicos(List<Servico> servicos) {
        this.servicos = servicos;
    }

}
