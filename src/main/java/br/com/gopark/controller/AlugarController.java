package br.com.gopark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AlugarController {

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "alugar", name = "alugar", method = RequestMethod.POST)
    public String alugar() {

        return "app/alugar";

    }


    @RequestMapping(value = "anuncio-informacoes", name = "anuncio-informacoes")
    public String anuncioInformacoes() {

        return "app/anuncio-info";

    }



}
