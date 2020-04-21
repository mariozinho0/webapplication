package br.com.gopark.api.resource;

import br.com.gopark.api.repository.AnuncioRepository;
import br.com.gopark.dao.AnuncioDAO;
import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.entity.Anuncio;
import br.com.gopark.entity.Usuario;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.rest.webmvc.ResourceNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;


@Slf4j
@RestController
@RequestMapping("api/anuncio")
public class AnuncioResource {

    @Autowired
    private AnuncioRepository anuncioRepository;

    @Autowired
    private AnuncioDAO anuncioDAO;

    @Autowired
    private UsuarioDAO usuarioDAO;


    //TODO VERIFICAR TESTE CASO CAMPO NAO SEJA PREENCHIDO
    //@ResponseStatus(HttpStatus.CREATED)
    @Transactional
    @PostMapping
    public ResponseEntity<?> cadastrar(@RequestBody Anuncio anuncio){

        Usuario usuario = usuarioDAO.select(1);

        try {

            anuncio.setUsuario(usuario);
            anuncioRepository.save(anuncio);
            return new ResponseEntity<>(anuncio,HttpStatus.CREATED);

        }catch (Exception e){
            return new ResponseEntity<>(e, HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping(value = "{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<?> atualizar(@RequestBody Anuncio anuncio, @PathVariable Integer id){

        verificaAnuncioExiste(id);

        try {
            anuncio.setId(id);
            anuncioRepository.save(anuncio);
            return new ResponseEntity<>(anuncio,HttpStatus.OK);

        }catch (Exception e){

            return new ResponseEntity<>("Erro ao atulizar anuncio" + e, HttpStatus.NOT_MODIFIED);

        }
    }


    @GetMapping
    public ResponseEntity<?> listar() {

        try {

            List<Anuncio> anuncios = anuncioRepository.findAll();
            return new ResponseEntity<>(anuncios, HttpStatus.OK);

        }catch (Exception e) {

            return new ResponseEntity<>("Error: " + e, HttpStatus.NOT_FOUND);

        }

    }

    @GetMapping("{id}")
    public ResponseEntity<?> buscar(@PathVariable Integer id){
        verificaAnuncioExiste(id);

        Anuncio anuncio = anuncioRepository.findById(id).get();

        return new ResponseEntity<>(anuncio, HttpStatus.OK);
    }


    @DeleteMapping("{id}")
    public ResponseEntity<?> remover(@PathVariable Integer id){

        verificaAnuncioExiste(id);

        try {
            Anuncio anuncio = anuncioRepository.findById(id).get();
            anuncioRepository.deleteById(id);
            return new ResponseEntity<>(anuncio, HttpStatus.OK);

        } catch (Exception e){
            return new ResponseEntity<>("Erro: " + e,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/cidade/{cidade}")
    public ResponseEntity<?> buscar(@PathVariable String cidade){

        try {

            List<Anuncio> anuncios = anuncioDAO.getByCidade(cidade);
            return new ResponseEntity<>(anuncios, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>("Error: " + e, HttpStatus.NOT_FOUND );
        }

    }

    //metodo para teste de busca por ID
    private void verificaAnuncioExiste(Integer id){
        if (!anuncioRepository.existsById(id)){
            throw new ResourceNotFoundException("Anuncio não localizado para o ID " + id);
        }
    }
}
