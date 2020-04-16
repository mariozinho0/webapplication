package br.com.gopark.dao.impl;

import br.com.gopark.dao.CartaoDAO;
import br.com.gopark.entity.Cartao;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

@NoArgsConstructor
@Repository
public class CartaoDAOImpl extends GenericDAOImpl<Cartao, Integer> implements CartaoDAO {
}
