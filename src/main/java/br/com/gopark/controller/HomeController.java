package br.com.gopark.controller;

import br.com.gopark.dao.AnuncioDAO;
import br.com.gopark.entity.Anuncio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private AnuncioDAO anuncioDAO;

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping("/")
    public String index() {

        return "index";

    }

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ModelAndView listar() {

//        List<Anuncio> anuncios = anuncioDAO.getAll();
//        ModelAndView modelAndView = new ModelAndView("index");
//        modelAndView.addObject("anuncios", anuncios);
//
//        return modelAndView;

        return new ModelAndView("index").addObject("anuncios", anuncioDAO.getAll());

    }

}
