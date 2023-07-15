/*
 * Classe Produto (Celulares)
 */
package controles;

import java.util.Date;
/**
 *
 *  Alunos: Felipe Matthew - Gabriel Marques
 */
public class Produto {
    //Atributos
   
    private int    cod;
    private String nome;
    private float  valor;
    private String cor;
    private String armazenamento;
    private String estado;
    private Date   fabrica;
    
    
    //Métodos - Construtor
    public Produto(int cod, String nome, float valor,  String armazenamento, String cor, String estado, Date fabrica) {
        this.cod            = cod;
        this.nome           = nome;
        this.valor          = valor;
        this.armazenamento  = armazenamento;
        this.cor            = cor;
        this.estado         = estado;
        this.fabrica        = fabrica;
    }
    
    // Métodos Setters   
  
    public void setCod(int cod)                        {this.cod = cod;}
    public void setNome(String nome)                   {this.nome = nome;}
    public void setValor(float valor)                  {this.valor = valor;}
    public void setCor(String cor)                     {this.cor = cor;}
    public void setArmazenamento(String armazenamento) {this.armazenamento = armazenamento;}
    public void setEstado (String estado)              {this.estado = estado;}
    public void setFabrica(Date fabrica)               {this.fabrica = fabrica;}

    // Métodos Getters

    public int getCod()              {return cod;}
    public String getNome()          {return nome;}
    public float getValor()          {return valor;}
    public String getCor()           {return cor;}
    public String getArmazenamento() {return armazenamento;}
    public String getEstado ()       {return estado;}
    public Date getFabrica()         {return fabrica;}    
}
