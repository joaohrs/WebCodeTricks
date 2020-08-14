package br.com.WebCodeTricks.controller;
import br.com.WebCodeTricks.model.Comentario;
import br.com.WebCodeTricks.repository.ComentarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;

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
        comentario.setDataComen(LocalDate.now());
        comentarioRepository.save(comentario);
        model.addAttribute("comentarios", comentarioRepository.findAll());
        return "comentarios";
    }
    /*@Autowired
    ComentarioService comentarioService;

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping(value="/comen", method= RequestMethod.GET)
    public ModelAndView getComentarios(){
        ModelAndView mv = new ModelAndView("comentarios");
        List<Comentario> comentarios = comentarioService.findAll();
        mv.addObject("comentarios", comentarios);
        return mv;
    }

    @RequestMapping(value="/comen/{id}", method=RequestMethod.GET)
    public ModelAndView getComentarioDetails(@PathVariable("id") long idComentario){
        ModelAndView mv = new ModelAndView("comentarioDetails");
        Comentario comentario = comentarioService.findById(idComentario);
        mv.addObject("comentario", comentario);
        return mv;
    }

    @RequestMapping(value="/addcomen", method=RequestMethod.GET)
    public String getComentarioForm(){
        return "add-comentario";
    }

    @RequestMapping(value="/addcomen", method=RequestMethod.POST)
    public String saveComentario(@Valid Comentario comentario, BindingResult result, RedirectAttributes attributes){
        if(result.hasErrors()){
            attributes.addFlashAttribute("mensagem", "Verifique se os campos obrigatórios foram preenchidos!");
            return "redirect:/addcomen";
        }
        comentario.setDataComen(LocalDate.now());
        comentarioService.save(comentario);
        return "redirect:/comen";
    }*/
}