package br.com.gopark.controller;

import br.com.gopark.entity.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping(value = "login", name = "login")
    public String login(@ModelAttribute("usuario") Usuario usuario) {

        return "auth/login";

    }

}
