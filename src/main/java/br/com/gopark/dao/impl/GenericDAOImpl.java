package br.com.gopark.dao.impl;

import br.com.gopark.dao.GenericDAO;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.lang.reflect.ParameterizedType;
import java.util.List;


//TODO PESQUISAR COMO LANÇAR EXCEPTIONS

/**
 * Classe que trabalha as operações do Banco de Dados de forma genérica
 */
public class GenericDAOImpl<T, K> implements GenericDAO<T, K> {

    @PersistenceContext
    protected EntityManager em;

    private Class<T> clazz;


    /*Construtor padrão*/
    @SuppressWarnings("unchecked")
    public GenericDAOImpl() {

        clazz = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass())
                .getActualTypeArguments()[0];

    }


    @Override
    /*Método que lida com o INSERT*/
    public void insert(T entity) {

        /*Faz INSERT a partir de um objeto*/
        em.persist(entity);

    }


    @Override
    /*Método que gerencia o comando SELECT*/
    public T select(K primaryKey) {

        return em.find(clazz, primaryKey);

    }


    @Override
    /*Método que gerencia o comando UPDATE*/
    public void update(T entity) {

        em.merge(entity);

    }


    @Override
    /*Método que gerencia o comando DELETE*/
    public void delete(K primaryKey) throws Exception {

        T entity = select(primaryKey);

        if (entity == null) {
            throw new Exception("Entidade não encontrada...");
        }

        em.remove(entity);

    }


    @Override
    /*Método que busca todos os registros da tabela e retorna-os em uma lista*/
    public List<T> getAll() {

        return em.createQuery("from " + clazz.getName(), clazz).getResultList();

    }

}
