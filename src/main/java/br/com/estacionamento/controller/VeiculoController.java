package br.com.estacionamento.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.estacionamento.dao.ClienteDAO;
import br.com.estacionamento.dao.VeiculoDAO;
import br.com.estacionamento.model.Veiculo;

@Controller
@RequestMapping("/veiculo")
public class VeiculoController {
	
	@Autowired
	private VeiculoDAO veiculoDao;
	
	@Autowired
	private ClienteDAO clienteDao;
	
	@RequestMapping(path= {"/cadastro", "/", ""})
	public String cadastro(Model model) {
		model.addAttribute("clientes", clienteDao.findAll());
		if (clienteDao.findAll().isEmpty()) {
			model.addAttribute("avisoCliente", "Nenhum cliente cadastrado. Para cadastrar um cliente, clique aqui!");
		}
		if (veiculoDao.findAll().isEmpty()) {
			return "veiculo/cadastro";
		} else {
			return "redirect:/veiculo/mostrar";
		}
	}
	
	@RequestMapping(path= {"/mostrar"})
	public String mostrar(Model model) {
		model.addAttribute("veiculos", veiculoDao.findAll());
		return "veiculo/mostrar";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String salvar(Model model, Veiculo veiculo) {
		veiculoDao.saveAndFlush(veiculo);
		model.addAttribute("veiculos", veiculoDao.findAll());
		return "redirect:/veiculo/mostrar";
	}
	

	@RequestMapping(path = "/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo) {
		veiculoDao.deleteById(codigo);
		return "redirect:/veiculo/mostrar";

	}
	
}
