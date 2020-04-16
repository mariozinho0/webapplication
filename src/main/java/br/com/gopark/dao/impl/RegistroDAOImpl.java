package br.com.gopark.dao.impl;

import br.com.gopark.dao.RegistroDAO;
import br.com.gopark.entity.Registro;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

@NoArgsConstructor
@Repository
public class RegistroDAOImpl extends GenericDAOImpl<Registro, Integer> implements RegistroDAO {
}
