package br.com.gopark.entity;

import br.com.gopark.enums.Pagamento;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Calendar;

/*Anotação que determina que a classe irá mapear uma tabela*/
@Entity
/*Anotação responsável pelas características da tabela*/
@Table(name = "servico")
public class Servico {

    //Atributos

    /*Anotação que diz o atributo que representa a PK da tabela*/
    @Id
    /*Anotação que passa os parâmetros para criação de SEQUENCE*/
    @SequenceGenerator(name = "servico", sequenceName = "servico_seq", allocationSize = 1)
    /*Anotação que gera uma SEQUENCE através de um padrão @SequenceGenerator*/
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "servico")
    /*Anotação que define as características da coluna*/
    @Column(name = "id", nullable = false, length = 8)
    private Integer id;

    /*Anotação que define as características da coluna*/
    @Column(name = "avaliacao", length = 1)
    private Integer avaliacao;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
//    @Enumerated(EnumType.ORDINAL)
    /*Anotação que define as características da coluna*/
    @Column(name = "preco", nullable = false, length = 6)
    private BigDecimal preco;

    /*Anotação que indica qual tipo de dado temporal será armazenado*/
    @Temporal(TemporalType.TIMESTAMP)
    /*Anotação que define as características da coluna*/
    @Column(name = "entrada", nullable = false)
    private Calendar entrada;

    /*Anotação que indica qual tipo de dado temporal será armazenado*/
    @Temporal(TemporalType.TIMESTAMP)
    /*Anotação que define as características da coluna*/
    @Column(name = "saida", nullable = false)
    private Calendar saida;

    /*Anotação que indica o uso de uma Enum e seu tipo de valor*/
    @Enumerated(EnumType.STRING)
    /*Anotação que define as características da coluna*/
    @Column(name = "pagamento", nullable = false, length = 15)
    private Pagamento pagamento;


    //Relacionamentos

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @ManyToOne
    /*Anotação que referencia a coluna da FK*/
    @JoinColumn(name = "id_veiculo")
    private Veiculo veiculo;

    /*Anotação que especifica o tipo de relacionamento:
    - 1º termo (antes do "To") representa a cardinalidade da entidade atual
    - 2º termo (depois do "To") representa a cardinalidade para o atributo refenciado abaixo*/
    @OneToOne
    /*Anotação que referencia a coluna da FK*/
    @JoinColumn(name = "id_anuncio")
    private Anuncio anuncio;


    //TODO ARRUMAR CONSTRUTORES MAP BIDIRECIONAL
    //Construtores

    /*Construtor com todos atributos*/
    public Servico(Integer avaliacao, BigDecimal preco, Calendar entrada, Calendar saida, Pagamento pagamento, Veiculo veiculo, Anuncio anuncio) {

        this.avaliacao = avaliacao;
        this.preco = preco;
        this.entrada = entrada;
        this.saida = saida;
        this.pagamento = pagamento;
        this.veiculo = veiculo;
        this.anuncio = anuncio;

    }

    /*Contrutor só com os atributos necessários*/
    public Servico(BigDecimal preco, Calendar entrada, Calendar saida, Pagamento pagamento, Veiculo veiculo, Anuncio anuncio) {

        this.preco = preco;
        this.entrada = entrada;
        this.saida = saida;
        this.pagamento = pagamento;
        this.veiculo = veiculo;
        this.anuncio = anuncio;

    }

    /*Construtor padrão*/
    public Servico() {

    }


    //Getters e Setters

    public Integer getId() {
        return id;
    }

    public Integer getAvaliacao() {
        return avaliacao;
    }

    public void setAvaliacao(Integer avaliacao) {
        this.avaliacao = avaliacao;
    }

    public BigDecimal getPreco() {
        return preco;
    }

    public void setPreco(BigDecimal preco) {
        this.preco = preco;
    }

    public Calendar getEntrada() {
        return entrada;
    }

    public void setEntrada(Calendar entrada) {
        this.entrada = entrada;
    }

    public Calendar getSaida() {
        return saida;
    }

    public void setSaida(Calendar saida) {
        this.saida = saida;
    }

    public Pagamento getPagamento() {
        return pagamento;
    }

    public void setPagamento(Pagamento pagamento) {
        this.pagamento = pagamento;
    }

    public Veiculo getVeiculo() {
        return veiculo;
    }

    public void setVeiculo(Veiculo veiculo) {
        this.veiculo = veiculo;
    }

    public Anuncio getAnuncio() {
        return anuncio;
    }

    public void setAnuncio(Anuncio anuncio) {
        this.anuncio = anuncio;
    }

}
