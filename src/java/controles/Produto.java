/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controles;

import java.util.Date;
/**
 *
 * @author alunos
 */
public class Produto {
    //Atributos
    private int cod;
    private String nome;
    private float valor;
    private Date fabrica;
    
    //Métodos - Construtor
    public Produto(int cod, String nome, float valor, Date fabrica) {
        this.cod = cod;
        this.nome = nome;
        this.valor = valor;
        this.fabrica = fabrica;
    }
    
    // Métodos Setters       
    public void setCod(int cod) {        this.cod = cod;    }
    public void setNome(String nome) {        this.nome = nome;    }
    public void setValor(float valor) {        this.valor = valor;    }
    public void setFabrica(Date fabrica) {        this.fabrica = fabrica;    }

    // Métodos Getters
    public int getCod() {        return cod;    }
    public String getNome() {        return nome;    }
    public float getValor() {        return valor;    }
    public Date getFabrica() {        return fabrica;    }    
}
