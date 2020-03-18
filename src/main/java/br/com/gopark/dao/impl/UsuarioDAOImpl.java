package br.com.gopark.dao.impl;

import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.entity.Usuario;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Usuario
 */
public class UsuarioDAOImpl extends GenericDAOImpl<Usuario, Integer> implements UsuarioDAO {

    /*Contrutor padrão*/
    public UsuarioDAOImpl() {
        super();
    }

}
