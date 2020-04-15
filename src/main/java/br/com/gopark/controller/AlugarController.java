package br.com.gopark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AlugarController {

    @RequestMapping(value = "anuncio-informacoes", name = "anuncio-informacoes")
    public String anuncioInformacoes() {

        return "app/anuncio-informacoes";

    }

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "alugar", name = "alugar", method = RequestMethod.POST)
    public ModelAndView alugar() {

        return new ModelAndView("app/agendamentos");

    }

}
