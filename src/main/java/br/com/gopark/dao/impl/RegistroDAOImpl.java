package br.com.gopark.dao.impl;

import br.com.gopark.dao.RegistroDAO;
import br.com.gopark.entity.Registro;
import org.springframework.stereotype.Repository;

@Repository
public class RegistroDAOImpl extends GenericDAOImpl<Registro, Integer> implements RegistroDAO {

    /*Contrutor padrão*/
    public RegistroDAOImpl() {
        super();
    }

}
