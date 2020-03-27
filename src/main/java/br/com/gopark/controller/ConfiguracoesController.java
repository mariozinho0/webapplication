package br.com.gopark.controller;

import br.com.gopark.entity.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConfiguracoesController {

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "configuracoes", name = "configuracoes")
    public String configuracoes(Usuario usuario) {

        return "app/configuracoes";

    }

}
