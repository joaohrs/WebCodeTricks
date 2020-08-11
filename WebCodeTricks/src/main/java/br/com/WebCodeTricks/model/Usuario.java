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

import static javax.persistence.GenerationType.IDENTITY;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Usuario {
    
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private long id;

    @NotBlank(message = "Nome obrigatório")
    private String nome;

    @Email
    @NotBlank(message = "Login obrigatório")
    private String login;

    @NotBlank(message = "Senha obrigatório")
    private String senha;

    /*public Usuario() {}

    public Usuario(String nome, String celular, String email, String senha){
        this.nome = nome;
        this.celular = celular;
        this.email = email;
        this.senha = senha;
    }

    public void setId(long id){
        this.id = id;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public void setCelular(String celular){
        this.celular = celular;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public void setSenha(String senha){
        this.senha = senha;
    }

    public long getId(){
        return id;
    }

    public String getNome(){
        return nome;
    }

    public String getCelular(){
        return celular;
    }    

    public String getEmail(){
        return email;
    }    

    public String getSenha(){
        return senha;
    }
    
    @Override
    public String toString(){
        return "Usuario{" + "id=" + id + ", nome=" + nome + ", celular=" + celular + ", email=" + email + ", senha=" + senha + '}';
    }*/
}