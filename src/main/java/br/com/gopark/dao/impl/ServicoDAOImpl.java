package br.com.gopark.dao.impl;

import br.com.gopark.dao.ServicoDAO;
import br.com.gopark.entity.Agendamento;
import org.springframework.stereotype.Repository;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Servico
 */
@Repository
public class ServicoDAOImpl extends GenericDAOImpl<Agendamento, Integer> implements ServicoDAO {

    /*Contrutor padrão*/
    public ServicoDAOImpl() {
        super();
    }

}
