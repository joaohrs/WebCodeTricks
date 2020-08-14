package br.com.WebCodeTricks.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import java.time.LocalDate;
import java.util.Date;

import static javax.persistence.FetchType.LAZY;
import static javax.persistence.GenerationType.IDENTITY;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Comentario {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private long idComentario;

    @NotNull(message = "Comentario é Obrigatório")
    @Lob
    private String conteudoComen;

    @JsonFormat(shape = JsonFormat.Shape.STRING,pattern = "MM-dd-yyyy")
    private LocalDate dataComen;

    private Integer pontuacao;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "id", referencedColumnName = "id")
    private Usuario usuario;
}
