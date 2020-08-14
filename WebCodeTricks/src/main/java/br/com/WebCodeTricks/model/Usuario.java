package br.com.WebCodeTricks.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import java.io.Serializable;

import static javax.persistence.GenerationType.IDENTITY;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Usuario{

    @Id
    @GeneratedValue(strategy = IDENTITY)
    private long id;

    @NotNull(message = "Nome obrigatório")
    private String nome;

    @Email
    @NotNull(message = "Login obrigatório")
    private String login;

    @NotNull(message = "Senha obrigatório")
    private String senha;

}