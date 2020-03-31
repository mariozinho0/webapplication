package br.com.gopark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MeusAnunciosController {

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "meus-anuncios", name = "meus-anuncios")
    public String meusAnuncios() {

        return "app/meus-anuncios";

    }
}
