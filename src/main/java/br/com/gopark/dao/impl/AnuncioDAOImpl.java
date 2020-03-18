package br.com.gopark.dao.impl;

import br.com.gopark.dao.AnuncioDAO;
import br.com.gopark.entity.Anuncio;

import java.util.List;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Anuncio
 */
public class AnuncioDAOImpl extends GenericDAOImpl<Anuncio, Integer> implements AnuncioDAO {

    /*Contrutor padrão*/
    public AnuncioDAOImpl() {
        super();
    }

    @Override
    public List<Anuncio> getByCidade(String cidade) {

        return em.createQuery
                ("select a from Anuncio a where a.endereco.cidade = :c")
                .setParameter("c", cidade).getResultList();

    }

}
