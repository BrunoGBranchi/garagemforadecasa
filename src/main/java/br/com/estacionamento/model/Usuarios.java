package br.com.estacionamento.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Usuarios implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long codigo;
	private String nome;
	private String user;
	private String senha;
	private boolean ativo;
	

	@ManyToMany
	private List<Grupo> grupos;
	
	@ManyToMany
	private List<Permissao> permissoes;
	
	
	
	public Usuarios() {

	}

	public Usuarios(Long codigo, String nome, String user, String senha, boolean ativo) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.user = user;
		this.senha = senha;
		this.ativo = ativo;
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

}
