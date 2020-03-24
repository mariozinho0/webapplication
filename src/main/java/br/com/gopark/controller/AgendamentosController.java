package br.com.gopark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AgendamentosController {

    @RequestMapping("agendamentos")
    public String agendamentos() {

        return "app/agendamentos";

    }

}
