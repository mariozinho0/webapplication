package br.com.gopark.dao.impl;

import br.com.gopark.dao.BancoDAO;
import br.com.gopark.entity.Banco;
import org.springframework.stereotype.Repository;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Banco
 */
@Repository
public class BancoDAOImpl extends GenericDAOImpl<Banco, Integer> implements BancoDAO {

    /*Contrutor padrão*/
    public BancoDAOImpl() {
        super();
    }

}
