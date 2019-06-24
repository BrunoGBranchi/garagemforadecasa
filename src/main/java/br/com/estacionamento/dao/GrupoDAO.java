package br.com.estacionamento.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.estacionamento.model.Grupo;
import br.com.estacionamento.model.Usuarios;

public interface GrupoDAO extends JpaRepository<Grupo, Long> {
	
	List<Grupo> findByUsuariosIn(Usuarios usuario);

}
