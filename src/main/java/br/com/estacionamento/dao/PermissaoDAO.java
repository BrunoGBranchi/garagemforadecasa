package br.com.estacionamento.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.estacionamento.model.Grupo;
import br.com.estacionamento.model.Permissao;

public interface PermissaoDAO extends JpaRepository<Permissao, Long> {
	
	List<Permissao> findByGruposIn(Grupo grupo);

}
