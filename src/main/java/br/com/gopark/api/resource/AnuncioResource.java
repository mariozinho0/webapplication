package br.com.gopark.api.resource;

import br.com.gopark.api.repository.AnuncioRepository;
import br.com.gopark.api.repository.UsuarioRepository;
import br.com.gopark.entity.Anuncio;
import br.com.gopark.entity.Usuario;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("api/anuncio")
public class AnuncioResource { //TODO CHECAR REDUNDANCIAS

    @Autowired
    private AnuncioRepository anuncioRepository;

    @Autowired
    private UsuarioRepository usuarioRepository;


    @Transactional
    @PostMapping
    public ResponseEntity<Anuncio> cadastrar(@RequestBody Anuncio anuncio, UriComponentsBuilder uriBuilder) {

        Usuario usuario = usuarioRepository.findById(1).get();

        anuncio.setUsuario(usuario);
        anuncioRepository.save(anuncio);

        URI uri = uriBuilder.build("api/anuncio");
        return ResponseEntity.created(uri).body(anuncio);

    }


    @Transactional
    @PutMapping(value = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Anuncio> atualizar(@RequestBody Anuncio anuncio, @PathVariable Integer id) {

        if (!anuncioIdExiste(id)) {

            return ResponseEntity.notFound().build();

        }

        anuncio.setId(id);
        anuncioRepository.save(anuncio);
        return ResponseEntity.ok(anuncio);

    }


    @GetMapping
    public List<Anuncio> listar() {

        return anuncioRepository.findAll();

    }


    @GetMapping("/{id}")
    public ResponseEntity<Anuncio> buscar(@PathVariable Integer id) {

        if (!anuncioIdExiste(id)) {

            return ResponseEntity.notFound().build();

        }

        Anuncio anuncio = anuncioRepository.findById(id).get();
        return ResponseEntity.ok(anuncio);

    }


    @Transactional
    @DeleteMapping("/{id}")
    public ResponseEntity remover(@PathVariable Integer id) {

        if (!anuncioIdExiste(id)) {

            return ResponseEntity.notFound().build();

        }

        Anuncio anuncio = anuncioRepository.findById(id).get();
        anuncioRepository.deleteById(id);
        return ResponseEntity.ok(anuncio);

    }


    @GetMapping("/cidade/{cidade}")
    public ResponseEntity buscarPorCidade(@PathVariable String cidade) {

        if (!anuncioRepository.existsAnuncioByEnderecoCidadeContainingIgnoreCase(cidade)) {

            return ResponseEntity.notFound().build();

        }

        List<Anuncio> anuncios = anuncioRepository.findByEnderecoCidadeContainingIgnoreCase(cidade);
        return ResponseEntity.ok(anuncios);

    }


    private boolean anuncioIdExiste(Integer id) {

        return anuncioRepository.existsById(id);

    }

}
