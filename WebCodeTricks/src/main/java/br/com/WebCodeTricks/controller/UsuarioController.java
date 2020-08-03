package br.com.WebCodeTricks.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.WebCodeTricks.model.Usuario;
import br.com.WebCodeTricks.repository.UsuarioRepository;

@Controller
public class UsuarioController {

    private final UsuarioRepository usuarioRepository;

    @Autowired
    public UsuarioController(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @GetMapping("/signup")
    public String showSignUpForm(Usuario usuario) {
        return "add-usuario";
    }

    @PostMapping("/addusuario")
    public String addUsuario(@Valid Usuario usuario, BindingResult result, Model model) {
        if(result.hasErrors()){
            return "add-usuario";
        }

        usuarioRepository.save(usuario);
        model.addAttribute("usuarios", usuarioRepository.findAll());
        return "index";
    }

    @GetMapping("/editar/{id}")
    public String showUpdateForm(@PathVariable("id") long id, Model model){
        Usuario usuario = usuarioRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Usuário Inválido do Id:" + id));
        model.addAttribute("usuario", usuario);
        return "editar-usuario";
    }

    @PostMapping("/alterar/{id}")
    public String alterarUsuario(@PathVariable("id") long id, @Valid Usuario usuario, BindingResult result,
            Model model) {
        if(result.hasErrors()){
            usuario.setId(id);
            return "editar-usuario";
        }
        
    usuarioRepository.save(usuario);
    model.addAttribute("usuarios", usuarioRepository.findAll());
    return "index";
    }

    @GetMapping("/deletar/{id}")
    public String deletarUsuario(@PathVariable("id") long id, Model model){
        Usuario usuario = usuarioRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Usuário Inválido do Id:" + id));
        usuarioRepository.delete(usuario);
        model.addAttribute("usuarios", usuarioRepository.findAll());
        return "index";
    }
}