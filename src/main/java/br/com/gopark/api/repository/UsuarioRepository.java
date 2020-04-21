package br.com.gopark.api.repository;

import br.com.gopark.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

    List<Usuario> findAll();

    Optional<Usuario> findById(Integer id);

    void deleteById(Integer id);

}
