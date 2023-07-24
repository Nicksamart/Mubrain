/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

/**
 *
 * @author sala303b
 */
public class Login_servlet extends HttpServlet {

    UsuarioDAO dao = new UsuarioDAO();
    Usuario usuario = new Usuario();

    String sucesso = "sucesso.jsp";
    String erro = "erro.jsp";
    String abrir = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
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
        processRequest(request, response);
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
        //  processRequest(request, response);
        String acao = request.getParameter("acao");
        HttpSession sessao = request.getSession();

        if (acao.equals("logar")) {
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            usuario.setEmail(user);
            usuario.setSenha(pass);
            
            Usuario logado = new Usuario();
            logado = dao.logar(usuario);
            
            if (logado.getNome() != null){
               abrir = "interno.jsp";
                request.setAttribute("msg", "Usuário fez login com sucesso");
                
                sessao.setAttribute("user", logado.getCodigo());
                request.setAttribute("usuario", usuario);

            } else {
                abrir = erro;
                sessao.removeAttribute("user");
                request.setAttribute("msg", "ERRO ao fazer login de usuário");
            }
        } else if (acao.equals("logout")) {
            sessao.removeAttribute("user");
            abrir = "index.jsp";

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
