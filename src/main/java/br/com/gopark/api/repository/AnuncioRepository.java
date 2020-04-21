package br.com.gopark.api.repository;

import br.com.gopark.entity.Anuncio;
import br.com.gopark.entity.Endereco;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AnuncioRepository extends JpaRepository<Anuncio, Integer> {

}
