package dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Usuario;

public class UsuarioDAO {

    private ConnectionFactory myConnection = new ConnectionFactory();
    private Connection con;
    private PreparedStatement stmt;
    private ResultSet rs;
    private Usuario usuario = new Usuario();

    public boolean create(Usuario usuario) {
        boolean right = false;
        con = myConnection.getConnection();

        String sql = "insert into usuario(nome, email, senha) values(?,?,?)";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getSenha());
            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar inserir novo Usuário!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

    public List<Usuario> read() {
        con = myConnection.getConnection();
        List usuarios = new ArrayList();
        String sql = "select * from usuario";
        try {
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {

                Usuario usu = new Usuario();

                usu.setCodigo(rs.getInt("codigo"));
                usu.setNome(rs.getString("nome"));
                usu.setEmail(rs.getString("email"));
                usu.setSenha(rs.getString("senha"));

                usuarios.add(usu);
            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar Usuários!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return usuarios;
    }

    public boolean update(Usuario usuario) {
        boolean right = false;
        con = myConnection.getConnection();
        String sql = "update usuario set nome=?, email=?, senha=? where codigo=?";

        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getSenha());
            stmt.setInt(4, usuario.getCodigo());
            stmt.executeUpdate();
            right = true;

        } catch (Exception e) {
            System.out.println("Erro ao tentar atualizar dados do usuário!" + e);
        } finally {
            myConnection.closeConnection(con, stmt);
        }
        return right;
    }

  public boolean delete(int codigo) {
    boolean right = false;
    con = myConnection.getConnection();
    String disableForeignKeyChecks = "SET FOREIGN_KEY_CHECKS=0;";
    String enableForeignKeyChecks = "SET FOREIGN_KEY_CHECKS=1;";
    String deleteUsuario = "DELETE FROM usuario WHERE codigo=?;";
    String deleteDependente = "DELETE FROM musica_avulsa WHERE codusuario=?;"; // Substitua "tabela_dependente" pelo nome da tabela dependente
    
    try {
        stmt = con.prepareStatement(disableForeignKeyChecks);
        stmt.executeUpdate();
        
        // Excluir registros dependentes na tabela dependente
        stmt = con.prepareStatement(deleteDependente);
        stmt.setInt(1, codigo);
        stmt.executeUpdate();
        
        // Excluir o usuário
        stmt = con.prepareStatement(deleteUsuario);
        stmt.setInt(1, codigo);
        stmt.executeUpdate();
        
        stmt = con.prepareStatement(enableForeignKeyChecks);
        stmt.executeUpdate();
        
        right = true;
    } catch (Exception e) {
        System.out.println("Erro ao tentar excluir Usuário!" + e);
    } finally {
        myConnection.closeConnection(con, stmt);
    }
    return right;
}


    public Usuario listar_usuario(int codigo) {
        con = myConnection.getConnection();
        Usuario usuario = new Usuario();
        String sql = "select * from usuario where codigo=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, codigo);
            rs = stmt.executeQuery();
            while (rs.next()) {

                usuario.setCodigo(rs.getInt("codigo"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));

            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar listar Usuário!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return usuario;
    }

    public Usuario logar(Usuario usuario) {
        
        con = myConnection.getConnection();
        String sql = "SELECT * FROM usuario WHERE email=? AND senha=?";
            Usuario usu = new Usuario();
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, usuario.getEmail());
            stmt.setString(2, usuario.getSenha());
            rs = stmt.executeQuery();
            while (rs.next()) {

                usu.setEmail(rs.getString("email"));
                usu.setSenha(rs.getString("senha"));
                usu.setNome(rs.getString("nome"));
                usu.setCodigo(rs.getInt("codigo"));               
            }

        } catch (Exception e) {
            System.out.println("Erro ao tentar LOGAR!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return usu;
    }

    public boolean verificarNomeExistente(String nome) {
        con = myConnection.getConnection();
        String sql = "SELECT COUNT(*) FROM usuario WHERE nome=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, nome);
            rs = stmt.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                if (count > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            System.out.println("Erro ao verificar nome existente!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return false;
    }

    public boolean verificarEmailExistente(String email) {
        con = myConnection.getConnection();
        String sql = "SELECT COUNT(*) FROM usuario WHERE email=?";
        try {
            stmt = con.prepareStatement(sql);
            stmt.setString(1, email);
            rs = stmt.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                if (count > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            System.out.println("Erro ao verificar e-mail existente!" + e);
        } finally {
            myConnection.closeConnection(con, stmt, rs);
        }
        return false;
    }

}
