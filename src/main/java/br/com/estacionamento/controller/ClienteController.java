package br.com.estacionamento.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.estacionamento.dao.ClienteDAO;
import br.com.estacionamento.model.Cliente;

@Controller
@RequestMapping("/cliente")
public class ClienteController {
	
	@Autowired
	private ClienteDAO clienteDao;
	
	@RequestMapping(path= {"/cadastro", "/", ""})
	public String cadastro() {
		return "cliente/cadastro";
	}
	
	@RequestMapping(path= {"/mostrar"})
	public String mostrar(Model model) {
		model.addAttribute("clientes", clienteDao.findAll());
		return "cliente/mostrar";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String salvar(Model model, Cliente cliente) {
		clienteDao.saveAndFlush(cliente);
		model.addAttribute("clientes", clienteDao.findAll());
		return "cliente/mostrar";
	}
	
	@RequestMapping(path = "/editando", method = RequestMethod.POST)
	public String editando(Cliente cliente, Model model) {
		clienteDao.saveAndFlush(cliente);
		return "redirect:/cliente/mostrar";
	}

	@RequestMapping(path = "/editar/{codigo}")
	public String editar(@PathVariable(value = "codigo") Long codigo, Model model) {
		Optional <Cliente> c = clienteDao.findById(codigo);
		model.addAttribute("clientes", c.get());
		return "cliente/editar";
	}

	@RequestMapping(path = "/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo) {
		clienteDao.deleteById(codigo);
		return "redirect:/cliente/mostrar";

	}

}
