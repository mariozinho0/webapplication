package br.com.gopark.api.resource;

import br.com.gopark.api.repository.VeiculoRepository;
import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.dao.VeiculoDAO;
import br.com.gopark.entity.Usuario;
import br.com.gopark.entity.Veiculo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.rest.webmvc.ResourceNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("api/veiculo")
public class VeiculoResource {
    @Autowired
    private VeiculoRepository veiculoRepository;

    @Autowired
    private VeiculoDAO veiculoDAO;

    @Autowired
    private UsuarioDAO usuarioDAO;

    @Transactional
    @PostMapping
    public ResponseEntity<?> cadastrar(@RequestBody Veiculo veiculo ){

        Usuario usuario = usuarioDAO.select(1);

        try {

            veiculo.setUsuario(usuario);
            veiculoRepository.save(veiculo);
            return new ResponseEntity<>(veiculo, HttpStatus.CREATED);

        }catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("{id}")
    public ResponseEntity<?> atualizar(@RequestBody Veiculo veiculo, @PathVariable Integer id){

        verificaVeiculoExiste(id);

        try {
            veiculo.setId(id);
            veiculoRepository.save(veiculo);
            return new ResponseEntity<>(veiculo, HttpStatus.OK);
        } catch (Exception e){
            return new ResponseEntity<>("Erro ao atulizar veiculo" + e,HttpStatus.NOT_MODIFIED);
        }
    }

    @GetMapping
    public ResponseEntity<?> listar(){
        try {
            List<Veiculo> veiculos = veiculoRepository.findAll();
            return new ResponseEntity<>(veiculos, HttpStatus.OK);
        } catch (Exception e){
            return new ResponseEntity<>("Error " + e, HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("{id}")
    public ResponseEntity<?> buscarId(@PathVariable Integer id){

        verificaVeiculoExiste(id);

        Veiculo veiculo = veiculoRepository.findById(id).get();
        return new ResponseEntity<>(veiculo, HttpStatus.OK);
    }

    @DeleteMapping("{id}")
    public ResponseEntity<?> remover(@PathVariable Integer id){

        verificaVeiculoExiste(id);

        try {

            veiculoRepository.deleteById(id);
            return new ResponseEntity<>("Deletado veiculo ID: " + id, HttpStatus.OK );

        }catch (ResponseStatusException e){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    private void verificaVeiculoExiste(Integer id){
        if (!veiculoRepository.existsById(id)){
            throw new ResourceNotFoundException("Veiculo não localizado para o ID" + id);
        }
    }
}
