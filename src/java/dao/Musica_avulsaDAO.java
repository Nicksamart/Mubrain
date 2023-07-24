package dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Musica_avulsa;

public class Musica_avulsaDAO {

    private ConnectionFactory myConnection = new ConnectionFactory();
    private Connection con;
    private PreparedStatement stmt;
    private ResultSet rs;
    private Musica_avulsa musica = new Musica_avulsa();

    public boolean create(Musica_avulsa musica) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "insert into musica_avulsa (nome, populariedade, codusuario, letras, opiniao, cantor_banda) values(?,?,?,?,?,?)";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, musica.getNome());
            stmt.setDouble(2, musica.getPopulariedade());
            stmt.setInt(3, musica.getCodusuario());
            stmt.setString(4, musica.getLetras());
            stmt.setString(5, musica.getOpiniao());
            stmt.setString(6, musica.getCantor_banda());
            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar inserir nova música!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public List<Musica_avulsa> read() {
        con = myConnection.getConnection();
        List msc = new ArrayList();
        String sql = "select * from musica_avulsa";
        try {
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {

                Musica_avulsa musc = new Musica_avulsa();

                musc.setCodigo(rs.getInt("codigo"));
                musc.setNome(rs.getString("nome"));
                musc.setPopulariedade(rs.getDouble("populariedade"));
                musc.setCodusuario(rs.getInt("codusuario"));
                musc.setLetras(rs.getString("letras"));
                musc.setOpiniao(rs.getString("opiniao"));
                musc.setCantor_banda(rs.getString("cantor_banda"));
                msc.add(musc);
            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar as Musica_avulsa/!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return msc;
    }

    public boolean update(Musica_avulsa musica) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "update musica_avulsa set nome=?, populariedade=?, codusuario=?, letras=?, opiniao=?, cantor_banda=?  where codigo=?";

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, musica.getNome());
            stmt.setDouble(2, musica.getPopulariedade());
            stmt.setInt(3, musica.getCodusuario());
            stmt.setString(4, musica.getLetras());
            stmt.setString(5, musica.getOpiniao());
            stmt.setString(6, musica.getCantor_banda());
            stmt.setInt(7, musica.getCodigo());

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
        String sql = "delete from musica_avulsa where codigo=?";
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

    public Musica_avulsa listar_musica(int codigo) {
        con = myConnection.getConnection();
        Musica_avulsa mus = new Musica_avulsa();
        String sql = "select * from musica_avulsa where codigo=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, codigo);
            rs = stmt.executeQuery();
            while (rs.next()) {

                mus.setCodigo(rs.getInt("codigo"));
                mus.setNome(rs.getString("nome"));
                mus.setPopulariedade(rs.getDouble("populariedade"));
                mus.setCodusuario(rs.getInt("codusuario"));
                mus.setLetras(rs.getString("letras"));
                mus.setOpiniao(rs.getString("opiniao"));
                mus.setCantor_banda(rs.getString("cantor_banda"));

            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar Música!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return mus;
    }

}
