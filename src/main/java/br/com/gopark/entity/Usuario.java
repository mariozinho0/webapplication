package br.com.gopark.entity;

import br.com.gopark.enums.Sexo;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Calendar;
import java.util.List;

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
    @DateTimeFormat(pattern = "ddMMyyyy") //TODO TIRAR (pattern = "")
    private Calendar nascimento;

    /*Anotação que define as características da coluna*/
    @Column(name = "senha", nullable = false, length = 20)
    private String senha;


    //Mapeamento Bidirecional

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToMany(mappedBy = "usuario")
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


    //TODO ARRUMAR CONSTRUTORES MAP BIDIRECIONAL
    //Construtores

    /*Construtor com todos atributos*/
    public Usuario (String nome, String usuario, String email, Long celular, String cpf, String biografia, String foto, Sexo sexo, Calendar nascimento, String senha) {

        this.nome = nome;
        this.usuario = usuario;
        this.email = email;
        this.celular = celular;
        this.cpf = cpf;
        this.biografia = biografia;
        this.foto = foto;
        this.sexo = sexo;
        this.nascimento = nascimento;
        this.senha = senha;

    }

    /*Contrutor só com os atributos necessários*/
    public Usuario (String nome, String usuario, String email, Long celular, String cpf, Sexo sexo, Calendar nascimento, String senha) {

        this.nome = nome;
        this.usuario = usuario;
        this.email = email;
        this.celular = celular;
        this.cpf = cpf;
        this.sexo = sexo;
        this.nascimento = nascimento;
        this.senha = senha;

    }

    /*Contrutor só com o id*/
    public Usuario(Integer id) {

        this.id = id;

    }

    /*Construtor padrão*/
    public Usuario() {

    }


    //Getters e Setters

    public Integer getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getCelular() {
        return celular;
    }

    public void setCelular(Long celular) {
        this.celular = celular;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getBiografia() {
        return biografia;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public Sexo getSexo() {
        return sexo;
    }

    public void setSexo(Sexo sexo) {
        this.sexo = sexo;
    }

    public Calendar getNascimento() {
        return nascimento;
    }

    public void setNascimento(Calendar nascimento) {
        this.nascimento = nascimento;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public List<Endereco> getEnderecos() {
        return enderecos;
    }

    public void setEnderecos(List<Endereco> endereco) {
        this.enderecos = endereco;
    }

    public List<Veiculo> getVeiculos() {
        return veiculos;
    }

    public void setVeiculos(List<Veiculo> veiculos) {
        this.veiculos = veiculos;
    }

    public List<Anuncio> getAnuncios() {
        return anuncios;
    }

    public void setAnuncios(List<Anuncio> anuncios) {
        this.anuncios = anuncios;
    }

    public List<Banco> getBancos() {
        return bancos;
    }

    public void setBancos(List<Banco> bancos) {
        this.bancos = bancos;
    }

    public List<Cartao> getCartoes() {
        return cartoes;
    }

    public void setCartoes(List<Cartao> cartoes) {
        this.cartoes = cartoes;
    }

}
