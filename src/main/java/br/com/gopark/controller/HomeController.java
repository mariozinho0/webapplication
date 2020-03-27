package br.com.gopark.controller;

import br.com.gopark.entity.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "/", name = "home")
    public String home(@ModelAttribute("usuario") Usuario usuario) {

        return "index";

    }

}
