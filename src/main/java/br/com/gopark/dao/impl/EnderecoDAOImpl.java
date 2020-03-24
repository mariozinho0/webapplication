package br.com.gopark.dao.impl;

import br.com.gopark.dao.EnderecoDAO;
import br.com.gopark.entity.Endereco;
import org.springframework.stereotype.Repository;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Endereço
 */
@Repository
public class EnderecoDAOImpl extends GenericDAOImpl<Endereco, Integer> implements EnderecoDAO {

    /*Construtor padrão*/
    public EnderecoDAOImpl() {
        super();
    }

}
