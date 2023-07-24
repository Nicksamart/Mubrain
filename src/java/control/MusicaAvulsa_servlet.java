/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.Musica_avulsaDAO;
import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Musica_avulsa;

/**
 *
 * @author nicho
 */
public class MusicaAvulsa_servlet extends HttpServlet {

    Musica_avulsa musica_avu = new Musica_avulsa();
    Musica_avulsaDAO dao = new Musica_avulsaDAO();
    MusicaAvulsa_ctrl ctrl = new MusicaAvulsa_ctrl();
    UsuarioDAO daousuario = new UsuarioDAO();

    String sucesso = "sucesso.jsp";
    String erro = "erro.jsp";
    String listar = "listar_musica_avulsa.jsp";
    String cadastrar = "cadastro_musica_avulsa.jsp";
    String editar = "editar_musica_avulsa.jsp";
    String abrir = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        /* try (PrintWriter out = response.getWriter()) {
            TODO output your page here. You may use following sample code.             out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MusicaAvulsa_servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MusicaAvulsa_servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);

        String acao = request.getParameter("acao");

        HttpSession sessao = request.getSession();

        if (acao.equals("cad_musicaAvulsa")) {

            request.setAttribute("usuario", daousuario.read());

            abrir = cadastrar;
        } else if (acao.equals("listar_musica_avulsa")) {
            abrir = listar;
            
            int usu = (int) sessao.getAttribute("user");
            request.setAttribute("usuario", usu);
            request.setAttribute("musicas_avulsas", dao.read());
            
            
        } else if (acao.equals("editar")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            
            request.setAttribute("usuario", daousuario.read());

            request.setAttribute("musicas_avulsas", dao.listar_musica(codigo));
            abrir = editar;

        } else if (acao.equals("excluir")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            if (dao.delete(codigo)) {
                abrir = sucesso;
                request.setAttribute("msg", "Excluído com sucesso");

            } else {
                abrir = erro;
                request.setAttribute("msg", "Erro ao excluir os dados");

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
        // processRequest(request, response);

        String acao = request.getParameter("acao");
        HttpSession sessao = request.getSession();

        if (acao.equals("cad_musicaAvulsa")) {

            request.setAttribute("usuario", daousuario.read());

            musica_avu.setNome(request.getParameter("txtNome"));
            musica_avu.setPopulariedade(Double.parseDouble(request.getParameter("txtNota")));
            musica_avu.setCodusuario(Integer.parseInt(request.getParameter("cbUsu")));
            musica_avu.setLetras(request.getParameter("txtLetras"));
            musica_avu.setOpiniao(request.getParameter("txtOpin"));
            musica_avu.setCantor_banda(request.getParameter("txtNomeB"));
            
             int usu =   (int) sessao.getAttribute("user");
             request.setAttribute("usuario", usu);
             musica_avu.setCodusuario(usu);

            if (ctrl.validarDados(musica_avu)) {
                if (dao.create(musica_avu)) {
                    request.setAttribute("msg", "OK!!! Single cadastrado com sucesso!");
                    abrir = sucesso;
                } else {
                    abrir = erro;
                    request.setAttribute("msg", "Ops!!! Erro ao tentar cadastrar Single!");
                }
            }
        } else if (acao.equals("atualizar")) {
            
            Musica_avulsa music = new Musica_avulsa();
            
            music.setCodigo(Integer.parseInt(request.getParameter("codigo")));
            music.setNome(request.getParameter("txtNome"));
            music.setPopulariedade(Double.parseDouble(request.getParameter("txtNota")));
            music.setCodusuario(Integer.parseInt(request.getParameter("cbUsu")));
            music.setLetras(request.getParameter("txtLetras"));
            music.setOpiniao(request.getParameter("txtOpin"));
            music.setCantor_banda(request.getParameter("txtNomeB"));
            
            if (dao.update(music)) {
                abrir = sucesso;
                request.setAttribute("msg", "Ok!!! Single atualizado com sucesso!");
            } else {
                abrir = erro;
                request.setAttribute("msg", "Ops!!! Erro ao tentar atualizar Single!");

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
