package model;

import java.util.Date;

public class Album {
    
    private int codigo;
    private String nome;
    private Date lancamento;
    private String gravadora;
    private String genero;
    private double populariedade;
    private String opiniao;
    private int codart;
    private int codusuario;

    public Album() {
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getLancamento() {
        return lancamento;
    }

    public void setLancamento(Date lancamento) {
        this.lancamento = lancamento;
    }

    public String getGravadora() {
        return gravadora;
    }

    public void setGravadora(String gravadora) {
        this.gravadora = gravadora;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public double getPopulariedade() {
        return populariedade;
    }

    public void setPopulariedade(double populariedade) {
        this.populariedade = populariedade;
    }

    public String getOpiniao() {
        return opiniao;
    }

    public void setOpiniao(String opiniao) {
        this.opiniao = opiniao;
    }

    public int getCodart() {
        return codart;
    }

    public void setCodart(int codart) {
        this.codart = codart;
    }

    public int getCodusuario() {
        return codusuario;
    }

    public void setCodusuario(int codusuario) {
        this.codusuario = codusuario;
    }
    

    
    
    
}
