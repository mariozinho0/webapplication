package br.com.gopark.dao.impl;

import br.com.gopark.dao.BancoDAO;
import br.com.gopark.entity.Banco;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

@NoArgsConstructor
@Repository
public class BancoDAOImpl extends GenericDAOImpl<Banco, Integer> implements BancoDAO {
}
