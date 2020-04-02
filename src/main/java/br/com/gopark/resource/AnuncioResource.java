package br.com.gopark.resource;

import br.com.gopark.dao.AnuncioDAO;
import br.com.gopark.entity.Anuncio;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController("anuncio/")
public class AnuncioResource {

    @Autowired
    private AnuncioDAO anuncioDAO;

    @GetMapping
    public List<Anuncio> listar() {

        return anuncioDAO.getAll();

    }

    @GetMapping("{id}")
    public Anuncio listarPorId(@PathVariable Integer id) {

        return anuncioDAO.select(id);

    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping
    public void cadastrar(@RequestBody Anuncio anuncio) {

        anuncioDAO.insert(anuncio);

    }

    @PutMapping("{id}")
    public void editar(@RequestBody Anuncio anuncio, @PathVariable Integer id) {

        anuncio.setId(id);
        anuncioDAO.update(anuncio);

    }

    @DeleteMapping("{id}")
    public void remover(@PathVariable Integer id) {

        try {

            anuncioDAO.delete(id);

        } catch (Exception e) {

            log.error("Erro ao deletar anúncio com id: " + id, e);

        }

    }

    @GetMapping("cidade")
    public List<Anuncio> pesquisarByCidade(String cidade) {

        return anuncioDAO.getByCidade(cidade);

    }


}
