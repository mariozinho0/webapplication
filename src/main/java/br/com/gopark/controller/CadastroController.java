package br.com.gopark.controller;

import br.com.gopark.dao.UsuarioDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("cadastro")
public class CadastroController {

    @Autowired
    UsuarioDAO usuarioDAO;

    @RequestMapping
    public String cadastro() {

        return "auth/cadastro";

    }

    @RequestMapping(value = "/cadastrar")
    public ModelAndView cadastrar() {

        return new ModelAndView("redirect:login");

    }

}
