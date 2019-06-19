package br.com.estacionamento.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.estacionamento.model.Veiculo;

public interface VeiculoDAO extends JpaRepository<Veiculo, Long> {
	
	List<Veiculo> findByModelo (String modelo);
	
	@Query("select v from Veiculo v where v.cliente = ?1")
	List<Veiculo> filtraPorCliente(Long codigo);

}
