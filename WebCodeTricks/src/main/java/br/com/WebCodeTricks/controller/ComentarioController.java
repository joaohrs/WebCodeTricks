package br.com.WebCodeTricks.controller;

import br.com.WebCodeTricks.model.Comentario;
import br.com.WebCodeTricks.model.Usuario;
import br.com.WebCodeTricks.repository.ComentarioRepository;
import br.com.WebCodeTricks.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class ComentarioController {
    private ComentarioRepository comentarioRepository;

    @Autowired
    public ComentarioController(ComentarioRepository comentarioRepository) {
        this.comentarioRepository = comentarioRepository;
    }

    @GetMapping("/comen")
    public String Comentario(Comentario comentario) {

        return "add-comentario";
    }

    @PostMapping("/addcomen")
    public String addComen(@Valid Comentario comentario, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "add-comentario";
        }
        comentarioRepository.save(comentario);
        model.addAttribute("comentarios", comentarioRepository.findAll());
        return "index";
    }
}