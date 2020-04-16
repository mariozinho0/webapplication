package br.com.gopark.dao;

import br.com.gopark.entity.Anuncio;

import java.util.List;

public interface AnuncioDAO extends GenericDAO<Anuncio, Integer> {

    List<Anuncio> getByCidade(String cidade);

    List<Anuncio> getById(Integer id);

}
