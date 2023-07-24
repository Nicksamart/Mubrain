package dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Musica;

public class MusicaDAO {

    private ConnectionFactory myConnection = new ConnectionFactory();
    private Connection con;
    private PreparedStatement stmt;
    private ResultSet rs;
    private Musica musica = new Musica();

    public boolean create(Musica musica) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "insert into musica(nome, codigo_album, populariedade, codusuario, letras) values(?,?,?,?,?)";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, musica.getNome());
            stmt.setInt(2, musica.getCodigo_album());
            stmt.setDouble(3, musica.getPopulariedade());
            stmt.setInt(4, musica.getCodusuario());
            stmt.setString(5, musica.getLetras());
                     

            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar inserir nova música!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public List<Musica> read() {
        con = myConnection.getConnection();
        List msc = new ArrayList();
        String sql = "select * from musica";
        try {
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {

                Musica musc = new Musica();

                musc.setCodigo(rs.getInt("codigo"));
                musc.setNome(rs.getString("nome"));
                musc.setCodigo_album(rs.getInt("codigo_album"));
                musc.setPopulariedade(rs.getDouble("populariedade"));
                musc.setCodusuario(rs.getInt("codusuario"));
                musc.setLetras(rs.getString("letras"));
                

                msc.add(musc);
            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar as músicas/!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return msc;
    }

    public boolean update(Musica musica) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "update musica set nome=?, codigo_album=?, populariedade=?, codusuario=?, letras=? where codigo=?";

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, musica.getNome());
            stmt.setInt(2, musica.getCodigo_album());
            stmt.setDouble(3, musica.getPopulariedade());
            stmt.setInt(4, musica.getCodusuario());
            stmt.setString(5, musica.getLetras());
            stmt.setInt(6, musica.getCodigo());
            

            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar atualizar dados da música!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public boolean delete(int codigo) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "delete from musica where codigo=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, codigo);
            stmt.executeUpdate();
            right = true;
        } catch (Exception e) {
            System.out.println("Erro ao tentar excluir música!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public Musica listar_musica(int codigo) {
        con = myConnection.getConnection();
        Musica mus = new Musica();
        String sql = "select * from musica where codigo=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, codigo);
            rs = stmt.executeQuery();
            while (rs.next()) {

                mus.setCodigo(rs.getInt("codigo"));
                mus.setNome(rs.getString("nome"));
                mus.setCodigo_album(rs.getInt("codigo_album"));
                mus.setPopulariedade(rs.getDouble("populariedade"));
                mus.setCodusuario(rs.getInt("codusuario"));
                mus.setLetras(rs.getString("letras"));
              

            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar Música!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return mus;
    }

}
