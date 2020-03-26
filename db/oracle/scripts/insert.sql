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
