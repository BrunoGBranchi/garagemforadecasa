package br.com.estacionamento.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.estacionamento.model.Cliente;
import br.com.estacionamento.model.Vaga;

public interface VagaDAO extends JpaRepository<Vaga, Long>{
	
	List<Vaga> findByCliente (Cliente cliente);
	
}
