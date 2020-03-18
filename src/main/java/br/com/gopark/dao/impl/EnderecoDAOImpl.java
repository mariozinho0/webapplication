package br.com.gopark.dao.impl;

import br.com.gopark.dao.EnderecoDAO;
import br.com.gopark.entity.Endereco;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Endereço
 */
public class EnderecoDAOImpl extends GenericDAOImpl<Endereco, Integer> implements EnderecoDAO {

    /*Construtor padrão*/
    public EnderecoDAOImpl() {
        super();
    }

}
