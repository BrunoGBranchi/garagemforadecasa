package br.com.estacionamento.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Vaga implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long codigo;
	private String cliente;
	private String veiculo;
	private String tamanho;
	private double tempo = 0.0;
	private double preco;

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
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
		double total = 0;
		if(tamanho == "p") {
			total = tempo * 2;
			System.out.println(total);
		}
		
		if(tamanho == "m") {
			total = (tempo * 3);
		}
		
		if(tamanho == "g") {
			total = (tempo * 5);
		}
		this.preco = total;
	}
	
	public double calculaPreco() {
		double total = 0;
		if(tamanho == "p") {
			total = tempo * 2;
			System.out.println(total);
		}
		return total;
	}

	public Vaga(Long codigo, String cliente, String veiculo, String tamanho, double tempo, double preco) {
		super();
		this.codigo = codigo;
		this.cliente = cliente;
		this.veiculo = veiculo;
		this.tamanho = tamanho;
		this.tempo = tempo;
		this.preco = preco;
	}

	public Vaga() {

	}

	public String getVeiculo() {
		return veiculo;
	}

	public void setVeiculo(String veiculo) {
		this.veiculo = veiculo;
	}

}
