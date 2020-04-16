package br.com.gopark.dao.impl;

import br.com.gopark.dao.EnderecoDAO;
import br.com.gopark.entity.Endereco;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

@NoArgsConstructor
@Repository
public class EnderecoDAOImpl extends GenericDAOImpl<Endereco, Integer> implements EnderecoDAO {
}
