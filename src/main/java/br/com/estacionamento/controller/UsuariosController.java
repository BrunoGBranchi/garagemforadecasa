package br.com.estacionamento.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.estacionamento.dao.UsuariosDAO;
import br.com.estacionamento.model.Usuarios;

@Controller
@RequestMapping("/usuarios")
public class UsuariosController {
	
	@Autowired
	private UsuariosDAO usuarioDao;
	
	@RequestMapping(path= {"/cadastro", "/", ""})
	public String cadastro() {
		return "usuarios/cadastro";
	}
	
	@RequestMapping(path= {"/mostrar"})
	public String mostrar(Model model) {
		model.addAttribute("usuarios", usuarioDao.findAll());
		return "usuarios/mostrar";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String salvar(Model model, Usuarios usuario) {
		usuarioDao.saveAndFlush(usuario);
		model.addAttribute("usuarios", usuarioDao.findAll());
		return "redirect:/login/entrar";
	}
	
	@RequestMapping(path = "/editando", method = RequestMethod.POST)
	public String editando(Usuarios usuario, Model model) {
		usuarioDao.saveAndFlush(usuario);
		return "redirect:/usuarios/mostrar";
	}

	@RequestMapping(path = "/editar/{codigo}")
	public String editar(@PathVariable(value = "codigo") Long codigo, Model model) {
		Optional <Usuarios> c = usuarioDao.findById(codigo);
		model.addAttribute("usuarios", c.get());
		return "usuarios/editar";
	}

	@RequestMapping(path = "/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo) {
		usuarioDao.deleteById(codigo);
		return "redirect:/usuarios/mostrar";

	}

	
}
