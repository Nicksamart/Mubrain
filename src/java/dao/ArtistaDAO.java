package dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.util.List;
import model.Artista;
import java.util.ArrayList;

public class ArtistaDAO {

    private ConnectionFactory myConnection = new ConnectionFactory();
    private Connection con;
    private PreparedStatement stmt;
    private ResultSet rs;
    private Artista artista = new Artista();

    public boolean create(Artista artista) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "insert into artista(nome, funcao, sexo, autor, nome_banda, nascimento, codusuario) values(?,?,?,?,?,?,?)";

        int autor = 0;

        if (artista.getAutor()) {
            autor = 1;
        }

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, artista.getNome());
            stmt.setString(2, artista.getFuncao());
            stmt.setString(3, artista.getSexo());
            stmt.setInt(4, autor);
            stmt.setString(5, artista.getNome_banda());
            java.sql.Date nascimento = new java.sql.Date(artista.getNascimento().getTime());
            stmt.setDate(6, nascimento);
            stmt.setInt(7, artista.getCodusuario());

            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar inserir novo artista!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public List<Artista> read() {
        con = myConnection.getConnection();
        List art = new ArrayList();
        String sql = "select * from artista";
        try {
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {

                Artista arti = new Artista();

                arti.setCodigo(rs.getInt("codigo"));
                arti.setNome(rs.getString("nome"));
                arti.setFuncao(rs.getString("funcao"));
                arti.setSexo(rs.getString("sexo"));
                arti.setAutor(rs.getBoolean("autor"));
                arti.setNome_banda(rs.getString("nome_banda"));
                arti.setNascimento(rs.getDate("nascimento"));
                arti.setCodusuario(rs.getInt("codusuario"));
                art.add(arti);

            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar o artista!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return art;
    }

    public boolean update(Artista artista) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "update artista set nome=?, funcao=?, sexo=?, autor=?, nome_banda=?, nascimento=? where codigo=?";

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, artista.getNome());
            stmt.setString(2, artista.getFuncao());
            stmt.setString(3, artista.getSexo());
            stmt.setBoolean(4, artista.getAutor());
            stmt.setString(5, artista.getNome_banda());
            java.sql.Date nascimento = new java.sql.Date(artista.getNascimento().getTime());
            stmt.setDate(6, nascimento);
            stmt.setInt(7, artista.getCodigo());

            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar atualizar dados do artista!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public boolean delete(int codigo) {
        boolean right = false;       
        con = myConnection.getConnection();
        String sql = "delete from artista where codigo=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, codigo);
            stmt.executeUpdate();
            right = true;
        } catch (Exception e) {
            System.out.println("Erro ao tentar excluir artista!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public Artista listar_artista(int codigo) {
        con = myConnection.getConnection();
        Artista art = new Artista();
        String sql = "select * from artista where codigo=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, codigo);
            rs = stmt.executeQuery();
            while (rs.next()) {

                art.setCodigo(rs.getInt("codigo"));
                art.setNome(rs.getString("nome"));
                art.setFuncao(rs.getString("funcao"));
                art.setSexo(rs.getString("sexo"));
                art.setAutor(rs.getBoolean("autor"));
                art.setNome_banda(rs.getString("nome_banda"));
                art.setNascimento(rs.getDate("nascimento"));

            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar o artista!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return art;
    }

}
