package br.com.gopark.api.resource;

import br.com.gopark.api.repository.UsuarioRepository;
import br.com.gopark.api.repository.VeiculoRepository;
import br.com.gopark.entity.Usuario;
import br.com.gopark.entity.Veiculo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("api/veiculo")
public class VeiculoResource { //TODO CHECAR REDUNDANCIAS

    @Autowired
    private VeiculoRepository veiculoRepository;

    @Autowired
    private UsuarioRepository usuarioRepository;


    @Transactional
    @PostMapping
    public ResponseEntity<Veiculo> cadastrar(@RequestBody Veiculo veiculo, UriComponentsBuilder uriBuilder) {

        Usuario usuario = usuarioRepository.findById(1).get();

        veiculo.setUsuario(usuario);
        veiculoRepository.save(veiculo);

        URI uri = uriBuilder.build("api/anuncio");
        return ResponseEntity.created(uri).body(veiculo);

    }


    @Transactional
    @PutMapping("/{id}")
    public ResponseEntity<Veiculo> atualizar(@RequestBody Veiculo veiculo, @PathVariable Integer id) {

        if (!veiculoIdExiste(id)) {

            return ResponseEntity.notFound().build();

        }

        veiculo.setId(id);
        veiculoRepository.save(veiculo);
        return ResponseEntity.ok(veiculo);

    }


    @GetMapping
    public ResponseEntity listar() {

        List<Veiculo> veiculos = veiculoRepository.findAll();
        return ResponseEntity.ok(veiculos);

    }


    @GetMapping("/{id}")
    public ResponseEntity<Veiculo> buscarId(@PathVariable Integer id) {

        if (!veiculoIdExiste(id)) {

            return ResponseEntity.notFound().build();

        }

        Veiculo veiculo = veiculoRepository.findById(id).get();
        return ResponseEntity.ok(veiculo);

    }


    @Transactional
    @DeleteMapping("/{id}")
    public ResponseEntity remover(@PathVariable Integer id) {

        if (!veiculoIdExiste(id)) {

            return ResponseEntity.notFound().build();

        }

        veiculoRepository.deleteById(id);
        return ResponseEntity.ok().build();

    }


    private boolean veiculoIdExiste(Integer id) {

        return veiculoRepository.existsById(id);

    }

}
