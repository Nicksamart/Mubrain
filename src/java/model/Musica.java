package model;


public class Musica {

    private int codigo;
    private String nome;
    private int codigo_album;
    private double populariedade;
    private int codusuario;
    private String letras;

    public Musica() {
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

    public int getCodigo_album() {
        return codigo_album;
    }

    public void setCodigo_album(int codigo_album) {
        this.codigo_album = codigo_album;
    }

    public double getPopulariedade() {
        return populariedade;
    }

    public void setPopulariedade(double populariedade) {
        this.populariedade = populariedade;
    }

    public int getCodusuario() {
        return codusuario;
    }

    public void setCodusuario(int codusuario) {
        this.codusuario = codusuario;
    }

    public String getLetras() {
        return letras;
    }

    public void setLetras(String letras) {
        this.letras = letras;
    }
    
    

   
}
