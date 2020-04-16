package br.com.gopark.resource;

import br.com.gopark.dao.UsuarioDAO;
import br.com.gopark.dao.VeiculoDAO;
import br.com.gopark.entity.Usuario;
import br.com.gopark.entity.Veiculo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
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
    public Veiculo listaPorId(@PathVariable Integer id) {

        return veiculoDAO.select(id);

    }


    @ResponseStatus(HttpStatus.CREATED)
    @Transactional
    @PostMapping
    public void cadastrar(@RequestBody Veiculo veiculo) {

        Usuario usuario = usuarioDAO.select(1);

        veiculo.setUsuario(usuario);
        veiculoDAO.insert(veiculo);

    }


    @Transactional
    @PutMapping("/{id}")
    public void editar(@RequestBody Veiculo veiculo, @PathVariable Integer id) {

        veiculo.setId(id);
        veiculoDAO.update(veiculo);

    }


    @Transactional
    @DeleteMapping("/{id}")
    public void excluir(@PathVariable Integer id) {

        try {

            veiculoDAO.delete(id);

        } catch (Exception e) {

            log.error("Erro ao deletar anúncio com id: " + id, e);

        }

    }

}
