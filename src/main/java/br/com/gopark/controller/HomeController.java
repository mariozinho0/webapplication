package br.com.gopark.controller;

import br.com.gopark.dao.AnuncioDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "/", name = "home")
    public String home() {

        return "index";

    }

}
