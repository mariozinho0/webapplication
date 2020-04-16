package br.com.gopark.dao.impl;

import br.com.gopark.dao.AnuncioDAO;
import br.com.gopark.entity.Anuncio;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Classe que trabalha as operações do Banco de Dados para a entidade Anuncio
 */
@Repository
public class AnuncioDAOImpl extends GenericDAOImpl<Anuncio, Integer> implements AnuncioDAO {

    /*Contrutor padrão*/
    public AnuncioDAOImpl() {
        super();
    }

    @Override
    public List<Anuncio> getByCidade(String cidade) {

        return em.createQuery
                ("select a from Anuncio a where lower(a.endereco.cidade) like lower(concat('%', :c, '%'))")
                .setParameter("c", cidade).getResultList();

    }

    @Override
    public List<Anuncio> getById(Integer id) {

        return em.createQuery("select a from Anuncio a where a.usuario.id = :i")
                .setParameter("i", id).getResultList();

    }

}
