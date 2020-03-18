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

-- TODO CHECK ESTADO???

-- SEQUENCE ENDERECO
CREATE SEQUENCE endereco_seq START WITH 1 INCREMENT BY 1;



-- TABELA BANCO
CREATE TABLE banco
(
    id         NUMBER(8)   NOT NULL,
    id_usuario NUMBER(8)   NOT NULL,
    agencia    NUMBER(4)   NOT NULL,
    banco      NUMBER(4)   NOT NULL,
    conta      NUMBER(6)   NOT NULL,
    tipo       VARCHAR(2)  NOT NULL
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
    id          NUMBER(8)    NOT NULL,
    id_usuario  NUMBER(8)    NOT NULL,
    modelo      VARCHAR(20)  NOT NULL,
    marca       VARCHAR(15)  NOT NULL,
    placa       VARCHAR(7)   NOT NULL,
    cor         VARCHAR(15)  NOT NULL,
    categoria   VARCHAR(15)  NOT NULL, -- TODO CRIAR NOVAS TABELAS PARA GUARDAR DOC VEICULO DUAS FOTOS HABILITACAO ???
    documento   VARCHAR(120) NOT NULL, -- TODO PESQUISAR QUAL DOCUMENTO DO CARRO CADASTRAR???
    foto        VARCHAR(120),
    habilitacao VARCHAR(120) NOT NULL,
    tipo        VARCHAR(15)  NOT NULL
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

-- CHECK CATEGORIA
ALTER TABLE veiculo
    ADD CONSTRAINT ck_categoria_veiculo CHECK (categoria IN ('HATCH', 'SEDAN', 'PERUA', 'SUV', 'PICAPE'));

-- CHECK TIPO
ALTER TABLE veiculo
    ADD CONSTRAINT ck_tipo_veiculo CHECK (tipo IN ('CARRO', 'MOTO'));

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
    categoria       VARCHAR(15), -- IDEIA: Só aceita na garagem esse tipo de categoria de carro (MULTIPLAS CATEGORIA NOVA Tabela)
    modalidade      VARCHAR(15)   NOT NULL,
    expiracao       DATE,
    disponibilidade VARCHAR(15)   NOT NULL, -- TIRAR ISSO DAQUI E COLOCAR EM OUTRA TABELA
    dimensoes       VARCHAR(8)    NOT NULL,
    foto            VARCHAR(120), -- TODO NOVA TABELA P/ FOTOS (MULTIPLICIDADE)
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



-- TABELA SERVICO
CREATE TABLE servico
( -- TODO ARRUMAR CAMPOS
    id         NUMBER(8)     NOT NULL,
    id_veiculo NUMBER(8)     NOT NULL,
    id_anuncio NUMBER(8)     NOT NULL,
--     id_cartao NUMBER(8) NOT NULL,
    avaliacao  NUMBER(1),
    preco      DECIMAL(6, 2) NOT NULL,
    entrada    DATE          NOT NULL,
    saida      DATE          NOT NULL,
    pagamento  VARCHAR(15)   NOT NULL
);

-- CHAVE PRIMÁRIA SERVICO
ALTER TABLE servico
    ADD CONSTRAINT pk_servico PRIMARY KEY (id);

-- CHAVE ESTRANGEIRA
ALTER TABLE servico
    ADD CONSTRAINT fk_veiculo_servico FOREIGN KEY (id_veiculo) REFERENCES veiculo (id);

-- UNIQUE ID ANUNCIO
ALTER TABLE servico
    ADD CONSTRAINT uq_id_anuncio UNIQUE (id_anuncio);

-- CHAVE ESTRANGEIRA
ALTER TABLE servico
    ADD CONSTRAINT fk_anuncio_servico FOREIGN KEY (id_anuncio) REFERENCES anuncio (id);

-- CHAVE ESTRANGEIRA CARTAO ANUNCIO
-- ALTER TABLE servico ADD CONSTRAINT fk_cartao_anuncio FOREIGN KEY (id_cartao) REFERENCES cartao (id);

-- CHECK AVALIACAO
ALTER TABLE servico
    ADD CONSTRAINT ck_avaliacao CHECK (avaliacao BETWEEN 1 AND 5);

-- CHECK PAGAMENTO
ALTER TABLE servico
    ADD CONSTRAINT ck_pagamento CHECK (pagamento IN ('CARTAO', 'BOLETO'));

-- SEQUENCE SERVICO
CREATE SEQUENCE servico_seq START WITH 1 INCREMENT BY 1;


/* =======  SCRIPTS DE INSERÇÃO  ======= */

-- INSERT INTO USUARIO
INSERT INTO usuario (id, nome, usuario, email, celular, cpf, biografia, foto, sexo, nascimento, senha)
    VALUES (usuario_seq.nextval, 'joao da silva', 'jao15', 'joao@email.com', '11963345894', '12345678901',
            'jovem estudante', 'localhost:8080/fotos/1.jpg', 'M', '12/12/2001', 'joao123');

-- INSERT INTO ENDERECO
INSERT INTO endereco (id, id_usuario, estado, cidade, bairro, endereco, cep, comprovante, complemento, numero)
    VALUES (endereco_seq.nextval, 1, 'SP', 'OSASCO', 'BARONESA', 'AV. JOÃO VENTURA', 12345678,
            'localhost:8080/comprovante/1.jpg', 'casa 3', 123);

-- INSERT INTO ENDERECO
INSERT INTO endereco (id, id_usuario, estado, cidade, bairro, endereco, cep, comprovante, complemento, numero)
VALUES (endereco_seq.nextval, 1, 'SP', 'OSASCO', 'LINS', 'AV. HENRIQUETA', 12498479,
        'localhost:8080/comprovante/2.jpg', 'casa 1', 412);

-- INSERT INTO BANCO
INSERT INTO banco (id, id_usuario, agencia, banco, conta, tipo)
    VALUES (banco_seq.nextval, 1, 1234, 079, 123456, 'CC');

-- INSERT INTO CARTAO
INSERT INTO cartao (id, id_usuario, numero, validade, descricao, seguranca, responsavel)
    VALUES (cartao_seq.nextval, 1, 1234567890123456, 1124, 'bradesco', 123, 'JOAO DA SILVA');

-- INSERT INTO VEICULO
INSERT INTO veiculo (id, id_usuario, modelo, marca, placa, cor, categoria, documento, foto, habilitacao, tipo)
    VALUES (veiculo_seq.nextval, 1, 'CHEVETTE', 'CHEVROLET', 'ABC1234', 'VINHO', 'HATCH',
        'localhost:8080/veiculo/documento/1.jpg', 'localhost:8080/veiculo/foto/1.jpg',
        'localhost:8080/veiculo/habilitacao/1.jpg', 'CARRO');

-- INSERT INTO ANUNCIO
INSERT INTO anuncio
    (id, id_usuario, id_endereco, preco, vagas, descricao, categoria, modalidade, expiracao, disponibilidade, dimensoes, foto, data)
    VALUES (anuncio_seq.nextval, 1, 1, 10.00, 1, 'Garage', 'HATCH', 'DIA', '23/02/2022', 'TOTAL', '10x20', 'localhost:8080/gopark/foto.jpg', SYSDATE);

-- INSERT INTO ANUNCIO
INSERT INTO anuncio
    (id, id_usuario, id_endereco, preco, vagas, descricao, categoria, modalidade, expiracao, disponibilidade, dimensoes, foto, data)
    VALUES (anuncio_seq.nextval, 1, 2, 25.00, 2, 'Casa', 'SEDAN', 'DIA', '23/02/2022', 'TOTAL', '30x15', 'localhost:8080/gopark/foto2.jpg', SYSDATE);

-- INSERT INTO SERVICO
INSERT INTO servico (id, id_veiculo, id_anuncio, avaliacao, preco, entrada, saida, pagamento)
    VALUES (servico_seq.nextval, 1, 1, 5, 10.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'CARTAO');


/* =======  SCRIPTS DE PESQUISA  ======= */

-- SELECT ALL USUARIO
SELECT *
FROM usuario;

-- SELECT ALL ENDERECO
SELECT *
FROM endereco;

-- SELECT ALL BANCO
SELECT *
FROM banco;

-- SELECT ALL CARTAO
SELECT *
FROM cartao;

-- SELECT ALL VEICULO
SELECT *
FROM veiculo;

-- SELECT ALL ANUNCIO
SELECT *
FROM anuncio;

-- SELECT ALL SERVICO
SELECT *
FROM servico;


/* =======  SCRIPTS DE EXCLUSÃO  ======= */

-- TODO DROP SEQUENCES

-- EXCLUI TABELA USUARIO
DROP TABLE usuario CASCADE CONSTRAINTS;

-- EXCLUI TABELA ENDERECO
DROP TABLE endereco CASCADE CONSTRAINTS;

-- EXCLUI TABELA BANCO
DROP TABLE banco CASCADE CONSTRAINTS;

-- EXCLUI TABELA CARTAO
DROP TABLE cartao CASCADE CONSTRAINTS;

-- EXCLUI TABELA VEICULO
DROP TABLE veiculo CASCADE CONSTRAINTS;

-- EXCLUI TABELA ANUNCIO
DROP TABLE anuncio CASCADE CONSTRAINTS;

-- EXCLUI TABELA SERVICO
DROP TABLE servico CASCADE CONSTRAINTS;
