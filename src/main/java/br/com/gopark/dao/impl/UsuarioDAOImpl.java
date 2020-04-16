package br.com.gopark.dao.impl;

import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.entity.Usuario;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@NoArgsConstructor
@Repository
public class UsuarioDAOImpl extends GenericDAOImpl<Usuario, Integer> implements UsuarioDAO {
}
