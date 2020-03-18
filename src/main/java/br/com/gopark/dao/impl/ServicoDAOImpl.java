package br.com.gopark.dao.impl;

import br.com.gopark.dao.ServicoDAO;
import br.com.gopark.entity.Servico;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Servico
 */
public class ServicoDAOImpl extends GenericDAOImpl<Servico, Integer> implements ServicoDAO {

    /*Contrutor padrão*/
    public ServicoDAOImpl() {
        super();
    }

}
