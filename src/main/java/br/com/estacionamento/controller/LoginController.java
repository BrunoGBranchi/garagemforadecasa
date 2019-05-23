package br.com.estacionamento.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@RequestMapping(path= {"/entrar", "/", ""})
	public String entrar() {
		return "login/entrar";
	}
	
	@RequestMapping(path = "/verificar", method = RequestMethod.GET)
	public String menu(String senha, Model model) throws IOException {
		if(validador(senha)) {
			model.addAttribute("senha", senha);
			return "redirect:login/menu";
		}else {
			return "redirect:login/erro";
		}
	}
	
	@RequestMapping(path = "/menu", method = RequestMethod.GET)
	public String menu() {
		return "redirect:estacionamento/home";
	}
	 
	 public boolean validador(String pass) {
		 if(pass.equals("123456")) {
		    return true;
		 }else {
			return false;
		 }
	 }

	@RequestMapping(path = "/erro", method = RequestMethod.GET)
	public String erro() {
		return "redirect;login/erro";
	}
	
}
