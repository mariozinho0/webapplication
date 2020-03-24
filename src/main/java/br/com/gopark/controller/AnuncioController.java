package br.com.gopark.controller;

import br.com.gopark.dao.AnuncioDAO;
import br.com.gopark.entity.Anuncio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("anunciar")
public class AnuncioController {

    /*Faz a injeção do DAO*/
    @Autowired
    private AnuncioDAO anuncioDAO;

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping
    public String anuncio() {

        return "app/anunciar";

    }

    @RequestMapping("/cadastrar")
    @Transactional
    public String cadastrar(Anuncio anuncio) {

        anuncioDAO.insert(anuncio);
        return "/";

    }

}
