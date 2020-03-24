package br.com.gopark.dao.impl;

import br.com.gopark.dao.CartaoDAO;
import br.com.gopark.entity.Cartao;
import org.springframework.stereotype.Repository;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Cartao
 */
@Repository
public class CartaoDAOImpl extends GenericDAOImpl<Cartao, Integer> implements CartaoDAO {

    /*Contrutor padrão*/
    public CartaoDAOImpl() {
        super();
    }

}
