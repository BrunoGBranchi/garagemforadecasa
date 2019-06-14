package br.com.estacionamento.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.estacionamento.model.Veiculo;

public interface VeiculoDAO extends JpaRepository<Veiculo, Long> {
	
	List<Veiculo> findByModelo (String modelo);

}
