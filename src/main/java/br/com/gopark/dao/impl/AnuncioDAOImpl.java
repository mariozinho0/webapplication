package br.com.gopark.dao.impl;

import br.com.gopark.dao.AnuncioDAO;
import br.com.gopark.entity.Anuncio;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@NoArgsConstructor
@Repository
public class AnuncioDAOImpl extends GenericDAOImpl<Anuncio, Integer> implements AnuncioDAO {

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
