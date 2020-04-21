package br.com.gopark.api.repository;

import br.com.gopark.entity.Anuncio;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface AnuncioRepository extends JpaRepository<Anuncio, Integer> {

    List<Anuncio> findAll();

    Optional<Anuncio> findById(Integer id);

    void deleteById(Integer id);

    List<Anuncio> findByEnderecoCidadeContainingIgnoreCase(String cidade);

    boolean existsAnuncioByEnderecoCidadeContainingIgnoreCase(String cidade);

}
