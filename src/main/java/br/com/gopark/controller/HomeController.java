package br.com.gopark.controller;

import br.com.gopark.entity.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "/", name = "home")
    public ModelAndView home(@ModelAttribute("usuario") Usuario usuario) {

        return new ModelAndView("index");

    }

}
