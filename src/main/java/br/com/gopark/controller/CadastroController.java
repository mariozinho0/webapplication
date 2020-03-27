package br.com.gopark.controller;

import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.entity.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CadastroController {

    @Autowired
    UsuarioDAO usuarioDAO;

    @RequestMapping(value = "cadastro", name = "cadastro")
    public ModelAndView cadastro(@ModelAttribute("usuario") Usuario usuario) {

        return new ModelAndView("auth/cadastro");

    }

    @Transactional
    //TODO TENTAR ARRUMAR URL (CADASTRO/CADASTRAR
    @RequestMapping(value = "cadastrar", name = "cadastro.cadastrar")
    public ModelAndView cadastrar(Usuario usuario) {

        usuarioDAO.insert(usuario);
        return new ModelAndView("redirect:login");

    }

}
