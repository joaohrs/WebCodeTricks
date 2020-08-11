package br.com.WebCodeTricks.repository;

import br.com.WebCodeTricks.model.Comentario;
import br.com.WebCodeTricks.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface ComentarioRepository extends JpaRepository<Comentario, Long> {
    Optional<Comentario> findByIdComentario(long idComentario);

    List<Comentario> findAllByUsuario(Usuario usuario);
}
