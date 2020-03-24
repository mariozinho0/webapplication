package br.com.gopark.dao.impl;

import br.com.gopark.dao.VeiculoDAO;
import br.com.gopark.entity.Veiculo;
import org.springframework.stereotype.Repository;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Veiculo
 */
@Repository
public class VeiculoDAOImpl extends GenericDAOImpl<Veiculo, Integer> implements VeiculoDAO {

    /*Contrutor padrão*/
    public VeiculoDAOImpl() {
        super();
    }

}
