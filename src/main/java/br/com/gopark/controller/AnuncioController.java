package br.com.gopark.controller;

import br.com.gopark.dao.AnuncioDAO;
import br.com.gopark.dao.EnderecoDAO;
import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.entity.Anuncio;
import br.com.gopark.entity.Endereco;
import br.com.gopark.entity.Usuario;
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
public class AnuncioController {


    /*Faz a injeção do DAO*/
    @Autowired
    private AnuncioDAO anuncioDAO;

    @Autowired
    private EnderecoDAO enderecoDAO;

    @Autowired
    private UsuarioDAO usuarioDAO;


    /*Mapeia a URL que deve aparecer no browser*/
    @RequestMapping(value = "anuncio", name = "anunciar")
    public ModelAndView anuncio(@ModelAttribute("anuncio") Anuncio anuncio) {

        return new ModelAndView("app/anunciar");

    }


    @RequestMapping(value = "/", method = RequestMethod.GET, name = "anuncio.listar")
    public ModelAndView listar() {

        return new ModelAndView("index").addObject("anuncios", anuncioDAO.getAll());

    }


    @Transactional
    @RequestMapping(value = "anunciar", method = RequestMethod.POST, name = "anunciar.cadastrar")
    public ModelAndView cadastrar(Anuncio anuncio) {

        Usuario usuario = usuarioDAO.select(1);

        Endereco endereco = anuncio.getEndereco();
        endereco.setUsuario(usuario);
        enderecoDAO.insert(endereco);

        anuncio.setUsuario(usuario);
        anuncioDAO.insert(anuncio);

        return new ModelAndView("redirect:/");

    }


    @RequestMapping(value = "editform/{id}", method = RequestMethod.GET, name = "anuncio.editform")
    public ModelAndView editForm(@PathVariable("id") Integer id, Anuncio anuncio) {

        return new ModelAndView("app/edit").addObject("anuncio", anuncioDAO.select(id));

    }


    @Transactional
    @RequestMapping(value = "editar", method = RequestMethod.POST, name = "anuncio.editar")
    public ModelAndView editar(Anuncio anuncio) {

        enderecoDAO.update(anuncio.getEndereco());
        anuncioDAO.update(anuncio);

        return new ModelAndView("redirect:/");

    }


    /**
     * RequestMapping: Diz ao controler que o método representa uma requisição
     *
     *      value: Representa o recurso que irá aparecer mapeado no browser
     *      method: Diz o tipo de método HTTP usado na requisição
     *      name: É o nome que vai ser usado para mapeamento de url na taglib do spring no jsp
     */
    @RequestMapping(value = "pesquisa", method = RequestMethod.GET, name = "anuncio.pesquisa")
    public ModelAndView pesquisaPorCidade(String cidade) {

        return new ModelAndView("app/pesquisar").addObject("pesquisa", anuncioDAO.getByCidade(cidade));

    }


    @Transactional
    @RequestMapping(value = "excluir/{id}", method = RequestMethod.GET, name = "anuncio.excluir")
    public ModelAndView excluir(@PathVariable Integer id, Anuncio anuncio) {

        try {

            anuncioDAO.delete(id);

        } catch (Exception e) {

            log.error("Erro ao deletar anúncio com id: " + id, e);

        }

        return new ModelAndView("redirect:/");

    }

}
