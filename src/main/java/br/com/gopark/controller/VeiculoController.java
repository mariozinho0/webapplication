package br.com.gopark.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VeiculoController {

    @RequestMapping(value = "veiculos", name = "veiculo.listar")
    public String listar() {

        return "app/veiculos";

    }

    @RequestMapping(value = "editar-veiculo", name = "veiculo.editform")
    public String editar() {

        return "app/veiculos-editar";

    }

    @RequestMapping(value = "/cadastro-veiculo", name = "veiculo.cadastro")
    public String cadastrar() {

        return "app/veiculos-cadastro";

    }

    @RequestMapping(value = "/excluir", name = "veiculo.excluir")
    public String excluir() {

        return "index";

    }

}
