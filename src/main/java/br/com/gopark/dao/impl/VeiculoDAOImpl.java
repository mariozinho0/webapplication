package br.com.gopark.dao.impl;

import br.com.gopark.dao.VeiculoDAO;
import br.com.gopark.entity.Veiculo;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Veiculo
 */
public class VeiculoDAOImpl extends GenericDAOImpl<Veiculo, Integer> implements VeiculoDAO {

    /*Contrutor padrão*/
    public VeiculoDAOImpl() {
        super();
    }

}
