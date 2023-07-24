/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.AlbumDAO;
import dao.MusicaDAO;
import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Musica;
import model.Usuario;

/**
 *
 * @author nicho
 */
public class Musica_servlet extends HttpServlet {

    Musica musica = new Musica();
    MusicaDAO dao = new MusicaDAO();
    Musica_ctrl ctrl = new Musica_ctrl();
    UsuarioDAO daousuario = new UsuarioDAO();
    AlbumDAO daoalbum = new AlbumDAO();

    String sucesso = "sucesso.jsp";
    String erro = "erro.jsp";
    String listar = "listar_musica.jsp";
    String cadastrar = "cadastro_musica.jsp";
    String editar = "editar_musica.jsp";
    String abrir = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);

        String acao = request.getParameter("acao");
        
        HttpSession sessao = request.getSession();
        

        if (acao.equals("cad_musica")) {
            request.setAttribute("usuario", daousuario.read());
            request.setAttribute("albuns", daoalbum.read());
            
            
            abrir = cadastrar;
        } else if (acao.equals("listar_musica")) {
            abrir = listar;
            
            int usu =   (int) sessao.getAttribute("user");
            request.setAttribute("musicas", dao.read());
            request.setAttribute("usuario", usu);
            
        } else if (acao.equals("editar")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            request.setAttribute("usuario", daousuario.read());
            request.setAttribute("albuns", daoalbum.read());
            request.setAttribute("musica", dao.listar_musica(codigo));
            abrir = editar;

        } else if (acao.equals("excluir")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            if (dao.delete(codigo)) {
                abrir = sucesso;
                request.setAttribute("msg", "Excluído com sucesso");

            } else {
                abrir = erro;
                request.setAttribute("msg", "Erro ao exluir os dados");

            }
        }

        RequestDispatcher visualizar = request.getRequestDispatcher(abrir);
        visualizar.forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        String acao = request.getParameter("acao");
       

        if (acao.equals("cad_musica")) {
            request.setAttribute("usuario", daousuario.read());
            request.setAttribute("albuns", daoalbum.read());

            musica.setNome(request.getParameter("txtNome"));
            musica.setCodigo_album(Integer.parseInt(request.getParameter("cbAlb")));
            musica.setPopulariedade(Double.parseDouble(request.getParameter("txtNota")));
            musica.setCodusuario(Integer.parseInt(request.getParameter("cbUsu")));
            musica.setLetras(request.getParameter("txtLetras"));
            
          
            
            if (ctrl.validarDados(musica)) {
                if (dao.create(musica)) {
                    request.setAttribute("msg", "OK!!! Música cadastrada com sucesso!");
                    abrir = sucesso;
                } else {
                    abrir = erro;
                    request.setAttribute("msg", "Ops!!! Erro ao tentar cadastrar música!");
                }
            }
        } else if (acao.equals("atualizar")) {
            Musica music = new Musica();
            music.setCodigo(Integer.parseInt(request.getParameter("codigo")));
            music.setNome(request.getParameter("txtNome"));
            music.setCodigo_album(Integer.parseInt(request.getParameter("cbAlb")));
            music.setPopulariedade(Double.parseDouble(request.getParameter("txtNota")));
            music.setCodusuario(Integer.parseInt(request.getParameter("cbUsu")));
            music.setLetras(request.getParameter("txtLetras"));

            if (dao.update(music)) {
                abrir = sucesso;
                request.setAttribute("msg", "Ok!!! Música atualizada com sucesso!");
            } else {
                abrir = erro;
                request.setAttribute("msg", "Ops!!! Erro ao tentar atualizar música!");

            }

        }
        RequestDispatcher visualizar = request.getRequestDispatcher(abrir);
        visualizar.forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
