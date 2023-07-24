package dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Album;
import java.sql.Date;
import java.util.List;

public class AlbumDAO {

    private ConnectionFactory myConnection = new ConnectionFactory();
    private Connection con;
    private PreparedStatement stmt;
    private ResultSet rs;
    private Album album = new Album();

    public boolean create(Album album) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "insert into album(nome, lancamento, gravadora, genero, populariedade, opiniao, codart, codusuario) values(?,?,?,?,?,?,?,?)";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, album.getNome());
            java.sql.Date estreia = new java.sql.Date(album.getLancamento().getTime());
            stmt.setDate(2, estreia);
            stmt.setString(3, album.getGravadora());
            stmt.setString(4, album.getGenero());
            stmt.setDouble(5, album.getPopulariedade());
            stmt.setString(6, album.getOpiniao());
            stmt.setInt(7, album.getCodart());
             stmt.setInt(8, album.getCodusuario());
            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar inserir novo álbum!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public List<Album> read() {
        con = myConnection.getConnection();
        List album = new ArrayList();
        String sql = "select * from album";
        try {
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {

                Album alb = new Album();

                alb.setCodigo(rs.getInt("codigo"));
                alb.setNome(rs.getString("nome"));
                alb.setLancamento(rs.getDate("lancamento"));
                alb.setGravadora(rs.getString("gravadora"));
                alb.setGenero(rs.getString("genero"));
                alb.setPopulariedade(rs.getDouble("populariedade"));
                alb.setOpiniao(rs.getString("opiniao"));
                alb.setCodart(rs.getInt("codart"));
                alb.setCodusuario(rs.getInt("codusuario"));
                
                album.add(alb);
            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar o álbum/!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return album;
    }

    public boolean update(Album album) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "update album set nome=?, lancamento=?, gravadora=?, genero=?, populariedade=?, opiniao=?, codart=? where codigo=?";

        try {

            stmt = con.prepareStatement(sql);
            stmt.setString(1, album.getNome());
            java.sql.Date estreia = new java.sql.Date(album.getLancamento().getTime());
            stmt.setDate(2, estreia);
            stmt.setString(3, album.getGravadora());
            stmt.setString(4, album.getGenero());
            stmt.setDouble(5, album.getPopulariedade());
            stmt.setString(6, album.getOpiniao());
            stmt.setInt(7, album.getCodart());
            stmt.setInt(8, album.getCodigo());

            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar atualizar dados do álbum!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public boolean delete(int codigo) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "delete from album where codigo=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, codigo);
            stmt.executeUpdate();
            right = true;
        } catch (Exception e) {
            System.out.println("Erro ao tentar excluir álbum!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public Album listar_album(int codigo) {
        con = myConnection.getConnection();
        Album album = new Album();
        String sql = "select * from album where codigo=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, codigo);
            rs = stmt.executeQuery();
            while (rs.next()) {

                album.setCodigo(rs.getInt("codigo"));
                album.setNome(rs.getString("nome"));
                album.setLancamento(rs.getDate("lancamento"));
                album.setGravadora(rs.getString("gravadora"));
                album.setGenero(rs.getString("genero"));
                album.setPopulariedade(rs.getDouble("populariedade"));
                album.setOpiniao(rs.getString("opiniao"));
                album.setCodart(rs.getInt("codart"));

            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar o álbum!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return album;
    }
}
