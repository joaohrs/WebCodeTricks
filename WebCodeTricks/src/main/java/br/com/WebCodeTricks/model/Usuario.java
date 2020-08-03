package br.com.WebCodeTricks.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name="tb_usuario")
public class Usuario {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @NotBlank(message = "Nome obrigatório")
    private String nome;

    @NotBlank(message = "Celular obrigatório")
    private String celular;

    @NotBlank(message = "Email obrigatório")
    private String email;

    @NotBlank(message = "Senha obrigatório")
    private String senha;

    public Usuario() {}

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
    
    /*@Override
    public String toString(){
        return "Usuario{" + "id=" + id + ", nome=" + nome + ", celular=" + celular + ", email=" + email + ", senha=" + senha + '}';
    }*/
}