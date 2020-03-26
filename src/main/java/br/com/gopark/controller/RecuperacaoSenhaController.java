package br.com.gopark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecuperacaoSenhaController {

    @RequestMapping(value = "recuperacao-senha", name = "recuperacao-senha")
    public String recuperacaoSenha() {

        return "auth/recuperacao-senha";

    }

}
