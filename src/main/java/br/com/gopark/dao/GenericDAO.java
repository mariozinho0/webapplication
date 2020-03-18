package br.com.gopark.dao;

import java.util.List;

public interface GenericDAO<T, K> {

    /*Faz INSERT a partir de um objeto*/
    public void insert(T entity);

    /*Faz commit das mudanças*/
    /*public void commit();*/

    /*Método que gerencia o comando SELECT*/
    public T select(K primaryKey);

    /*Método que gerencia o comando UPDATE*/
    public void update(T entity);

    /*Método que gerencia o comando DELETE*/
    public void delete(K primaryKey) throws Exception;

    /*Método que busca todos os registros da tabela e retorna-os em uma lista*/
    public List<T> getAll();

}
