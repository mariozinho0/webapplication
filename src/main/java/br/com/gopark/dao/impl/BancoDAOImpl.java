package br.com.gopark.dao.impl;

import br.com.gopark.dao.BancoDAO;
import br.com.gopark.entity.Banco;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Banco
 */
public class BancoDAOImpl extends GenericDAOImpl<Banco, Integer> implements BancoDAO {

    /*Contrutor padrão*/
    public BancoDAOImpl() {
        super();
    }

}
