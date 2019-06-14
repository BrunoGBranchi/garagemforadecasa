package br.com.estacionamento.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Cliente implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long codigo;
	private String nome;
	private String cpf;
	private String endereco;
	private String complemento;
	private String cidade;
	private String uf;

	@OneToMany(targetEntity = Veiculo.class)
	private Set<Veiculo> veiculo = new HashSet<Veiculo>();

	public Cliente(Long codigo, String nome, String cpf, String endereco, String eomplemento, String cidade, String uf,
			Set<Veiculo> veiculo) {
		super();
		this.codigo = codigo;
		this.nome = nome;
		this.cpf = cpf;
		this.endereco = endereco;
		this.complemento = eomplemento;
		this.cidade = cidade;
		this.uf = uf;
		this.veiculo = veiculo;
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

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public Set<Veiculo> getVeiculo() {
		return veiculo;
	}

	public void setVeiculo(Set<Veiculo> veiculo) {
		this.veiculo = veiculo;
	}

	public Cliente() {

	}

}
