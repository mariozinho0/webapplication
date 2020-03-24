package br.com.gopark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AlugarController {

    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping("alugar")
    public String alugar() {

        return "app/alugar";

    }

}
