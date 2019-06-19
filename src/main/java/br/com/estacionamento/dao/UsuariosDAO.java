package br.com.estacionamento.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.estacionamento.model.Usuarios;

public interface UsuariosDAO extends JpaRepository<Usuarios, Long>{
	
	@Query("select u from Usuarios u where u.user = ?1 and u.senha = ?2")
	Usuarios validarLogin(String usuario, String senha);
	
}
