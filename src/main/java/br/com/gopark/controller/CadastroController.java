package br.com.gopark.controller;

import br.com.gopark.dao.UsuarioDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CadastroController {

    @Autowired
    UsuarioDAO usuarioDAO;

    @RequestMapping(value = "cadastro", name = "cadastro")
    public String cadastro() {

        return "auth/cadastro";

    }

    @RequestMapping(value = "cadastrar", name = "cadastro.cadastrar")
    public ModelAndView cadastrar() {

        return new ModelAndView("redirect:login");

    }

}
