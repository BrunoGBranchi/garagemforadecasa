package br.com.estacionamento.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.estacionamento.model.Cliente;


public interface ClienteDAO extends JpaRepository<Cliente, Long>{
	
	List<Cliente> findByNome (String nome);
	
}
