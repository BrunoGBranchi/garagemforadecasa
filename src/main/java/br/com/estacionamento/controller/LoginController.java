package br.com.estacionamento.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.estacionamento.dao.UsuariosDAO;
import br.com.estacionamento.model.Usuarios;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private UsuariosDAO usuariosDao;

	@RequestMapping(path = { "/entrar", "/", "" })
	public String entrar() {
		return "login/entrar";
	}

	@RequestMapping(path = "/verificar")
	public String menu(Usuarios usuario, Model model) throws IOException {

		Usuarios u = usuariosDao.validarLogin(usuario.getUser(), usuario.getSenha());

		if (u != null) {
			return "redirect:/login/menu";
		} else {
			return "redirect:/login/erro";
		}
	}

	@RequestMapping(path = "/menu", method = RequestMethod.GET)
	public String menu() {
		return "redirect:estacionamento/home";
	}

	public boolean validador(String pass) {
		if (pass.equals("123456")) {
			return true;
		} else {
			return false;
		}
	}

	@RequestMapping(path = "/erro", method = RequestMethod.GET)
	public String erro() {
		return "redirect;login/erro";
	}

}
