package br.com.estacionamento.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.estacionamento.dao.ClienteDAO;
import br.com.estacionamento.dao.VagaDAO;
import br.com.estacionamento.dao.VeiculoDAO;
import br.com.estacionamento.model.Vaga;

@Controller
@RequestMapping("/vaga")
public class VagaController {
	
	@Autowired
	private VagaDAO vagaDao;
	
	@Autowired
	private ClienteDAO clienteDao;
	
	@Autowired
	private VeiculoDAO veiculoDao;
	
	@RequestMapping(path= {"/cadastro", "/", ""})
	public String cadastro(Model model) {
		model.addAttribute("clientes", clienteDao.findAll());
		model.addAttribute("listaClientes", clienteDao.findAll());
		return "vaga/cadastro";
	}
	
	@RequestMapping(path= {"/mostrar"})
	public String mostrar(Model model) {
		model.addAttribute("vagas", vagaDao.findAll());
		return "vaga/mostrar";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String salvar(Model model, Vaga vaga) {
		vagaDao.saveAndFlush(vaga);
		model.addAttribute("vagas", vagaDao.findAll());
		return "redirect:/vaga/mostrar";
	}
	

	@RequestMapping(path = "/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo) {
		vagaDao.deleteById(codigo);
		return "redirect:/vaga/mostrar";

	}
	
	
	@RequestMapping(path= {"/dinamico/{codigo}"})
	public String findveiculo(@PathVariable(value = "codigo") Long codigo ,Model model) {
		model.addAttribute("listaVeiculos", veiculoDao.filtraPorCliente(codigo));
		return "vaga/cadastro";
	}
}
