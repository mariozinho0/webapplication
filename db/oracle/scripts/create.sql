/* =======  SCRIPTS DE CRIAÇÃO  ======= */

-- TABELA USUARIO
CREATE TABLE usuario
(
    id         NUMBER(8)   NOT NULL,
    nome       VARCHAR(45) NOT NULL,
    usuario    VARCHAR(15) NOT NULL,
    email      VARCHAR(50) NOT NULL,
    celular    NUMBER(11)  NOT NULL,
    cpf        CHAR(11)    NOT NULL,
    biografia  VARCHAR(150),
    foto       VARCHAR(120),
    sexo       CHAR(1)     NOT NULL,
    nascimento DATE        NOT NULL,
    senha      VARCHAR(20) NOT NULL
);

-- CHAVE PRIMÁRIA USUARIO
ALTER TABLE usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id);

-- CHECK SEXO
ALTER TABLE usuario
    ADD CONSTRAINT ck_sexo CHECK (sexo IN ('M', 'F'));

-- UNIQUE USUARIO
ALTER TABLE usuario
    ADD CONSTRAINT uq_usuario UNIQUE (usuario);

-- UNIQUE EMAIL
ALTER TABLE usuario
    ADD CONSTRAINT uq_email UNIQUE (email);

-- UNIQUE CELULAR
ALTER TABLE usuario
    ADD CONSTRAINT uq_celular UNIQUE (celular);

-- UNIQUE CPF
ALTER TABLE usuario
    ADD CONSTRAINT uq_cpf UNIQUE (cpf);

-- SEQUENCE USUARIO
CREATE SEQUENCE usuario_seq START WITH 1 INCREMENT BY 1;



-- TABELA ENDERECO
CREATE TABLE endereco
(
    id          NUMBER(8)   NOT NULL,
    id_usuario  NUMBER(8)   NOT NULL,
    estado      CHAR(2)     NOT NULL,
    cidade      VARCHAR(25) NOT NULL,
    bairro      VARCHAR(30) NOT NULL,
    endereco    VARCHAR(60) NOT NULL,
    cep         NUMBER(8)   NOT NULL,
    comprovante VARCHAR(120),
    complemento VARCHAR(45),
    numero      NUMBER(6)   NOT NULL
);

-- CHAVE PRIMÁRIA ENDERECO
ALTER TABLE endereco
    ADD CONSTRAINT pk_endereco PRIMARY KEY (id);

-- UNIQUE USUARIO ENDERECO
-- ALTER TABLE endereco
--     ADD CONSTRAINT uq_fk_usuario_endereco UNIQUE (id_usuario);

-- CHAVE ESTRANGEIRA USUARIO ENDERECO
ALTER TABLE endereco
    ADD CONSTRAINT fk_usuario_endereco FOREIGN KEY (id_usuario) REFERENCES usuario (id);

-- UNIQUE COMPROVANTE
ALTER TABLE endereco
    ADD CONSTRAINT uq_comprovante UNIQUE (comprovante);

-- CHECK ESTADO

ALTER TABLE endereco
    ADD CONSTRAINT ck_estado CHECK (estado IN
                                    ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA',
                                     'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'));

-- SEQUENCE ENDERECO
CREATE SEQUENCE endereco_seq START WITH 1 INCREMENT BY 1;



-- TABELA BANCO
CREATE TABLE banco
(
    id         NUMBER(8)  NOT NULL,
    id_usuario NUMBER(8)  NOT NULL,
    agencia    NUMBER(4)  NOT NULL,
    banco      NUMBER(4)  NOT NULL,
    conta      NUMBER(6)  NOT NULL,
    tipo       VARCHAR(2) NOT NULL
);

-- CHAVE PRIMÁRIA BANCO
ALTER TABLE banco
    ADD CONSTRAINT pk_banco PRIMARY KEY (id);

-- CHAVE ESTRANGEIRA USUARIO BANCO
ALTER TABLE banco
    ADD CONSTRAINT fk_usuario_banco FOREIGN KEY (id_usuario) REFERENCES usuario (id);

-- CHECK TIPO
ALTER TABLE banco
    ADD CONSTRAINT ck_tipo_conta CHECK (tipo IN ('CC', 'CP'));

-- SEQUENCE BANCO
CREATE SEQUENCE banco_seq START WITH 1 INCREMENT BY 1;



-- TABELA CARTAO
CREATE TABLE cartao
(
    id          NUMBER(8)   NOT NULL,
    id_usuario  NUMBER(8)   NOT NULL,
    numero      NUMBER(16)  NOT NULL,
    validade    NUMBER(4)   NOT NULL,
    descricao   VARCHAR(20),
    seguranca   NUMBER(3)   NOT NULL,
    responsavel VARCHAR(30) NOT NULL
);

-- CHAVE PRIMÁRIA CARTAO
ALTER TABLE cartao
    ADD CONSTRAINT pk_cartao PRIMARY KEY (id);

-- CHAVE ESTRANGEIRA USUARIO CARTAO
ALTER TABLE cartao
    ADD CONSTRAINT fk_usuario_cartao FOREIGN KEY (id_usuario) REFERENCES usuario (id);

-- SEQUENCE CARTAO
CREATE SEQUENCE cartao_seq START WITH 1 INCREMENT BY 1;



-- TABELA VEICULO
CREATE TABLE veiculo
(
    id          NUMBER(8)   NOT NULL,
    id_usuario  NUMBER(8)   NOT NULL,
    modelo      VARCHAR(20) NOT NULL,
    marca       VARCHAR(15) NOT NULL,
    placa       VARCHAR(7)  NOT NULL,
    ano         NUMBER(4)   NOT NULL,
    cor         VARCHAR(15) NOT NULL,
    categoria   VARCHAR(15) NOT NULL, -- TODO CRIAR NOVAS TABELAS PARA GUARDAR DOC VEICULO DUAS FOTOS HABILITACAO ???
    documento   VARCHAR(120),         -- TODO PESQUISAR QUAL DOCUMENTO DO CARRO CADASTRAR???
    foto        VARCHAR(120),
    habilitacao VARCHAR(120),
    aprovacao   VARCHAR(10),
    veiculo     VARCHAR(5) NOT NULL
);

-- CHAVE PRIMÁRIA VEICULO
ALTER TABLE veiculo
    ADD CONSTRAINT pk_veiculo PRIMARY KEY (id);

-- CHAVE ESTRANGEIRA USUARIO VEICULO
ALTER TABLE veiculo
    ADD CONSTRAINT fk_usuario_veiculo FOREIGN KEY (id_usuario) REFERENCES usuario (id);

-- UNIQUE HABILITACAO
ALTER TABLE veiculo
    ADD CONSTRAINT uq_habilitacao UNIQUE (habilitacao);

-- UNIQUE DOCUMENTO
ALTER TABLE veiculo
    ADD CONSTRAINT uq_documento UNIQUE (documento);

-- CHECK MARCA

ALTER TABLE veiculo
    ADD CONSTRAINT ck_marca_veiculo CHECK (marca IN
                                           ('CHEVROLET', 'FIAT', 'FORD', 'HYUNDAI', 'TOYOTA', 'CHERY', 'BMW', 'YAHAMA',
                                            'HONDA'));

-- CHECK CATEGORIA
ALTER TABLE veiculo
    ADD CONSTRAINT ck_categoria_veiculo CHECK (categoria IN ('HATCH', 'SEDAN', 'PERUA', 'SUV', 'PICAPE'));

-- CHECK APROVACAO
ALTER TABLE veiculo
    ADD CONSTRAINT ck_aprovacao_veiculo CHECK (aprovacao IN ('APROVADO', 'NEGADO', 'AGUARDANDO'));

-- CHECK TIPO
ALTER TABLE veiculo
    ADD CONSTRAINT ck_veiculo_veiculo CHECK (veiculo IN ('CARRO', 'MOTO'));

-- SEQUENCE VEICULO
CREATE SEQUENCE veiculo_seq START WITH 1 INCREMENT BY 1;



-- TABELA ANUNCIO
CREATE TABLE anuncio
(                                           -- TODO ARRUMAR CAMPOS
    id              NUMBER(8)     NOT NULL,
    id_usuario      NUMBER(8)     NOT NULL,
    id_endereco     NUMBER(8)     NOT NULL, -- TODO FAZER CHECAGEM SE OS IDS CORRESPONDEM A USUARIOS DIFERENTES
    preco           DECIMAL(6, 2) NOT NULL, -- COLOCAR PRECOS POR HORA, DEMAIS HORAS E ETC...
    vagas           NUMBER(2),
    descricao       VARCHAR(200),
    categoria       VARCHAR(15),            -- IDEIA: Só aceita na garagem esse tipo de categoria de carro (MULTIPLAS CATEGORIA NOVA Tabela)
    modalidade      VARCHAR(15)   NOT NULL,
    expiracao       DATE,
    disponibilidade VARCHAR(15)   NOT NULL, -- TIRAR ISSO DAQUI E COLOCAR EM OUTRA TABELA
    dimensoes       VARCHAR(8)    NOT NULL,
    foto            VARCHAR(120),           -- TODO NOVA TABELA P/ FOTOS (MULTIPLICIDADE)
    data            DATE          NOT NULL
);

-- CHAVE PRIMÁRIA ANUNCIO
ALTER TABLE anuncio
    ADD CONSTRAINT pk_anuncio PRIMARY KEY (id);

-- CHAVE ESTRANGEIRA USUARIO ANUNCIO
ALTER TABLE anuncio
    ADD CONSTRAINT fk_usuario_anuncio FOREIGN KEY (id_usuario) REFERENCES usuario (id);

-- CHAVE ESTRANGEIRA ENDERECO ANUNCIO
ALTER TABLE anuncio
    ADD CONSTRAINT fk_endereco_anuncio FOREIGN KEY (id_endereco) REFERENCES endereco (id);

-- CHECK CATEGORIA
ALTER TABLE anuncio
    ADD CONSTRAINT ck_categoria_anuncio CHECK (categoria IN ('HATCH', 'SEDAN', 'PERUA', 'SUV', 'PICAPE'));

-- CHECK MODALIDADE
ALTER TABLE anuncio
    ADD CONSTRAINT ck_modalidade CHECK (modalidade IN ('HORA', 'DIA', 'MES'));

-- CHECK DISPONIBILIDADE
ALTER TABLE anuncio
    ADD CONSTRAINT ck_disponibilidade CHECK (disponibilidade IN ('MANHA', 'TARDE', 'NOITE', 'MADRUGADA', 'TOTAL'));

-- SEQUENCE ANUNCIO
CREATE SEQUENCE anuncio_seq START WITH 1 INCREMENT BY 1;



-- TABELA AGENDAMENTO
CREATE TABLE agendamento
(
    id         NUMBER(8) NOT NULL,
    id_veiculo NUMBER(8) NOT NULL,
    id_anuncio NUMBER(8) NOT NULL,
    --     id_cartao NUMBER(8) NOT NULL, -- TODO NECESSÁRIO CARTÃO P/ AGENDAR???
    data       DATE      NOT NULL,
    status     VARCHAR(10)
);

-- CHAVE PRIMÁRIA AGENDAMENTO
ALTER TABLE agendamento
    ADD CONSTRAINT pk_agendamento PRIMARY KEY (id);

-- CHAVE ESTRANGEIRA
ALTER TABLE agendamento
    ADD CONSTRAINT fk_veiculo_agendamento FOREIGN KEY (id_veiculo) REFERENCES veiculo (id);

-- UNIQUE ID ANUNCIO
ALTER TABLE agendamento
    ADD CONSTRAINT uq_id_anuncio_agendamento UNIQUE (id_anuncio); -- TODO ARRUMAR NOME DA CONSTRAINT

-- CHAVE ESTRANGEIRA
ALTER TABLE agendamento
    ADD CONSTRAINT fk_anuncio_agendamento FOREIGN KEY (id_anuncio) REFERENCES anuncio (id);

-- CHAVE ESTRANGEIRA CARTAO ANUNCIO
/*ALTER TABLE agendamento
    ADD CONSTRAINT fk_cartao_anuncio FOREIGN KEY (id_cartao) REFERENCES cartao (id);*/

-- CHECK PAGAMENTO
ALTER TABLE agendamento
    ADD CONSTRAINT ck_status CHECK (status IN ('AGENDADO', 'CANCELADO'));

-- SEQUENCE AGENDAMENTO
CREATE SEQUENCE agendamento_seq START WITH 1 INCREMENT BY 1;



-- TABELA REGISTRO
CREATE TABLE registro
(
    id             NUMBER(8)     NOT NULL,
    id_agendamento NUMBER(8)     NOT NULL,
    avaliacao      NUMBER(1),
    total          DECIMAL(6, 2) NOT NULL,
    pagamento      VARCHAR(15)   NOT NULL,
    entrada        DATE          NOT NULL,
    saida          DATE          NOT NULL
);

-- CHAVE PRIMÁRIA AGENDAMENTO
ALTER TABLE registro
    ADD CONSTRAINT pk_registro PRIMARY KEY (id);

-- UNIQUE ID ANUNCIO
ALTER TABLE registro
    ADD CONSTRAINT uq_id_anuncio_registro UNIQUE (id_agendamento); -- TODO ARRUMAR NOME DA CONSTRAINT

-- CHAVE ESTRANGEIRA
ALTER TABLE registro
    ADD CONSTRAINT fk_agendamento_registro FOREIGN KEY (id_agendamento) REFERENCES agendamento (id);

-- CHECK AVALIACAO
ALTER TABLE registro
    ADD CONSTRAINT ck_avaliacao_registro CHECK (avaliacao BETWEEN 1 AND 5); -- TODO ARRUMAR NOME DA CONSTRAINT

-- CHECK PAGAMENTO
ALTER TABLE registro
    ADD CONSTRAINT ck_pagamento_registro CHECK (pagamento IN ('CARTAO', 'DINHEIRO')); -- TODO ARRUMAR NOME DA CONSTRAINT

-- SEQUENCE REGISTRO
CREATE SEQUENCE registro_seq START WITH 1 INCREMENT BY 1;
