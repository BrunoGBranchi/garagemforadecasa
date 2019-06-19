package br.com.estacionamento.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Vaga implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long codigo;
	@ManyToOne
	private Cliente cliente;
	private String tamanho;
	private double tempo = 0.0;
	private double preco = 0.0;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public String getTamanho() {
		return tamanho;
	}

	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}

	public double getTempo() {
		return tempo;
	}

	public void setTempo(double tempo) {
		this.tempo = tempo;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public Vaga(Long codigo, Cliente cliente, String tamanho, double tempo, double preco) {
		super();
		this.codigo = codigo;
		this.cliente = cliente;
		this.tamanho = tamanho;
		this.tempo = tempo;
		this.preco = preco;
	}

	public Vaga() {

	}

}
