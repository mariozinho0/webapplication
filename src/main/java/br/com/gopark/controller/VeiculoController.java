package br.com.gopark.controller;

import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.dao.VeiculoDAO;
import br.com.gopark.entity.Usuario;
import br.com.gopark.entity.Veiculo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
public class VeiculoController {

    @Autowired
    private UsuarioDAO usuarioDAO;

    @Autowired
    private VeiculoDAO veiculoDAO;

    @RequestMapping(value = "veiculos", method = RequestMethod.GET, name = "veiculo.listar")
    public ModelAndView listar() {

        return new ModelAndView("app/veiculos").addObject("veiculos", veiculoDAO.getAll());

    }


    @RequestMapping(value = "editar-veiculo/{id}", method = RequestMethod.GET, name = "veiculo.editform")
    public ModelAndView editForm(@PathVariable("id") Integer id, Veiculo veiculo) {

        return new ModelAndView("app/veiculos-editar").addObject("veiculo", veiculoDAO.select(id));

    }

    @Transactional
    @RequestMapping(value = "veiculo-editado", name = "veiculo.editar")
    public ModelAndView editar(Veiculo veiculo) {

        veiculoDAO.update(veiculo);

        return new ModelAndView("redirect:veiculos");

    }


    @RequestMapping(value = "cadastro-veiculo", name = "veiculo.cadastro")
    public ModelAndView cadastro(@ModelAttribute("veiculo") Veiculo veiculo) {

        return new ModelAndView("app/veiculos-cadastro");

    }


    @Transactional
    @RequestMapping(value = "cadastrar-veiculo", method = RequestMethod.POST, name = "veiculo.cadastrar")
    public ModelAndView cadastrar(Veiculo veiculo) {

        Usuario usuario = usuarioDAO.select(1);

        veiculo.setUsuario(usuario);
        veiculoDAO.insert(veiculo);

        return new ModelAndView("redirect:veiculos");

    }


    @Transactional
    @RequestMapping(value = "excluir-veiculo/{id}", name = "veiculo.excluir")
    public ModelAndView excluir(@PathVariable Integer id, Veiculo veiculo) {

        try {

            veiculoDAO.delete(id);

        } catch (Exception e) {

            log.error("Erro ao deletar anúncio com id: " + id, e);

        }

        return new ModelAndView("redirect:veiculos");

    }

}
