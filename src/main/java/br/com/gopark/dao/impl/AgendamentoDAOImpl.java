package br.com.gopark.dao.impl;

import br.com.gopark.dao.AgendamentoDAO;
import br.com.gopark.entity.Agendamento;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Repository;

@NoArgsConstructor
@Repository
public class AgendamentoDAOImpl extends GenericDAOImpl<Agendamento, Integer> implements AgendamentoDAO {
}
