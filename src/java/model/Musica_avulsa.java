package model;

public class Musica_avulsa {

    private int codigo;
    private String nome;
    private double populariedade;
    private int codusuario;
    private String letras;
    private String opiniao;
    private String cantor_banda;

    public Musica_avulsa() {
    }

    public Musica_avulsa(int codigo, String nome, double populariedade, int codusuario, String letras, String opiniao, String cantor_banda) {
        this.codigo = codigo;
        this.nome = nome;
        this.populariedade = populariedade;
        this.codusuario = codusuario;
        this.letras = letras;
        this.opiniao = opiniao;
        this.cantor_banda = cantor_banda;
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

    public String getOpiniao() {
        return opiniao;
    }

    public void setOpiniao(String opiniao) {
        this.opiniao = opiniao;
    }

    public String getCantor_banda() {
        return cantor_banda;
    }

    public void setCantor_banda(String cantor_banda) {
        this.cantor_banda = cantor_banda;
    }

   
    

}
