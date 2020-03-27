package br.com.gopark.controller;

import br.com.gopark.entity.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecuperacaoSenhaController {

    @RequestMapping(value = "recuperacao-senha", name = "recuperacao-senha")
    public String recuperacaoSenha(@ModelAttribute("usuario") Usuario usuario) {

        return "auth/recuperacao-senha";

    }

}
