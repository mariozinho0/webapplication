package br.com.gopark.dao.impl;

import br.com.gopark.dao.AgendamentoDAO;
import br.com.gopark.entity.Agendamento;
import org.springframework.stereotype.Repository;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Servico
 */
@Repository
public class AgendamentoDAOImpl extends GenericDAOImpl<Agendamento, Integer> implements AgendamentoDAO {

    /*Contrutor padrão*/
    public AgendamentoDAOImpl() {
        super();
    }

}
