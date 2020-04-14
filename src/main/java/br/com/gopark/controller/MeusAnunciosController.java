package br.com.gopark.controller;

import br.com.gopark.dao.AnuncioDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MeusAnunciosController {

    @Autowired
    private AnuncioDAO anuncioDAO;

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "meus-anuncios", method = RequestMethod.GET, name = "meus-anuncios")
    public ModelAndView meusAnuncios() {

        return new ModelAndView("app/meus-anuncios").addObject("manuncios", anuncioDAO.getById(1));

    }

}
