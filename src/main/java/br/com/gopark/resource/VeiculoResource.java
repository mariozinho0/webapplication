package br.com.gopark.resource;

import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.dao.VeiculoDAO;
import br.com.gopark.entity.Anuncio;
import br.com.gopark.entity.Usuario;
import br.com.gopark.entity.Veiculo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.rest.webmvc.ResourceNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("veiculo-rest")
public class VeiculoResource {

    @Autowired
    private VeiculoDAO veiculoDAO;

    @Autowired
    private UsuarioDAO usuarioDAO;


    @GetMapping
    public List<Veiculo> listar() { //TODO ARRUMAR QUE TA MOSTRANDO AGENDAMENTO

        return veiculoDAO.getAll();

    }


    @GetMapping("/{id}")
/*    public Veiculo listarPorId(@PathVariable Integer id) {


        return veiculoDAO.select(id);

    }*/
    public ResponseEntity<?>listaPorId(@PathVariable("id") Integer id) {

        verificaVeiculoExiste(id);
        Veiculo veiculo = veiculoDAO.select(id);
        return new ResponseEntity<>(veiculo, HttpStatus.OK);

    }


    @ResponseStatus(HttpStatus.CREATED)
    @Transactional
    @PostMapping

    /*public ResponseEntity<?> cadastrar (@RequestBody Veiculo veiculo){

        Usuario usuario = usuarioDAO.select(1);
        veiculo.setUsuario(usuario);

        return new ResponseEntity<>(veiculoDAO.insert(veiculo), HttpStatus.CREATED);
    }*/

    public void cadastrar(@RequestBody Veiculo veiculo) {

        Usuario usuario = usuarioDAO.select(1);

        veiculo.setUsuario(usuario);
        veiculoDAO.insert(veiculo);

    }


    @Transactional
    @PutMapping("/{id}")
    public ResponseEntity<?> editar (@RequestBody Veiculo veiculo, @PathVariable Integer id) {

        verificaVeiculoExiste(id);

        veiculo.setId(id);
        veiculoDAO.update(veiculo);

        return new ResponseEntity<>(HttpStatus.OK);

    }


    @Transactional
    @DeleteMapping("/{id}")
    public ResponseEntity<?> excluir(@PathVariable Integer id) {

        verificaVeiculoExiste(id);

        try {

            veiculoDAO.delete(id);
            return new ResponseEntity<>(HttpStatus.OK);

        } catch (Exception e) {

            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

        }

    }

/*    public void excluir(@PathVariable Integer id) {


        try {

            veiculoDAO.delete(id);

        } catch (Exception e) {

            log.error("Erro ao deletar anúncio com id: " + id, e);

        }

    }*/

    //TRATATIVA DE ERRO
    private void verificaVeiculoExiste(Integer id){
        //Veiculo veiculo = veiculoDAO.select(id);
        if (veiculoDAO.select(id) == null)
            throw new ResourceNotFoundException("Veiculo não localizado para o ID " + id);
    }

}
