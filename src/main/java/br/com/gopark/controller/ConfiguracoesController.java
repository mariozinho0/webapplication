package br.com.gopark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConfiguracoesController {

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "configuracoes", name = "configuracoes")
    public String configuracoes() {

        return "app/configuracoes";

    }

}
