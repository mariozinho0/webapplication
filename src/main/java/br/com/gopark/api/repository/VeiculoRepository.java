package br.com.gopark.api.repository;

import br.com.gopark.entity.Veiculo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VeiculoRepository extends JpaRepository<Veiculo, Integer> {
}
