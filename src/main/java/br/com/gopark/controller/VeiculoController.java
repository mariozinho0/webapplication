package br.com.gopark.controller;

import br.com.gopark.dao.VeiculoDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class VeiculoController {

    @Autowired
    private VeiculoDAO veiculoDAO;

    @RequestMapping(value = "veiculos", name = "veiculo.listar")
    public ModelAndView listar() {

        return new ModelAndView("app/veiculos").addObject("veiculos", veiculoDAO.getAll());

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
