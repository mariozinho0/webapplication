package br.com.gopark.dao.impl;

import br.com.gopark.dao.VeiculoDAO;
import br.com.gopark.entity.Veiculo;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

@NoArgsConstructor
@Repository
public class VeiculoDAOImpl extends GenericDAOImpl<Veiculo, Integer> implements VeiculoDAO {
}
