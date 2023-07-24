/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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
public class Usuario_servlet extends HttpServlet {

    Usuario usuario = new Usuario();
    UsuarioDAO dao = new UsuarioDAO();
    Usuario_ctrl ctrl = new Usuario_ctrl();

    String sucesso = "sucesso.jsp";
    String erro = "erro.jsp";
    String listar = "listar_usuario.jsp";
    String cadastrar = "cadastro_usuario.jsp";
    String editar = "editar_usuario.jsp";
    String abrir = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        /* try (PrintWriter out = response.getWriter()) {
            TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Usuario_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Usuario_servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
        String acao = request.getParameter("acao");

        if (acao.equals("listar_usuario")) {
            abrir = listar;

            request.setAttribute("usuarios", dao.read());

        } else if (acao.equals("editar")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            abrir = editar;
            request.setAttribute("usuario", dao.listar_usuario(codigo));

        } else if (acao.equals("excluir")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            if (dao.delete(codigo)) {
                abrir = "index.jsp";
               
                request.setAttribute("msg", "Excluido com sucesso");

            } else {
                abrir = erro;
             request.setAttribute("msg", "Erro ao excluir os dados, informações está relacionadas a singles");

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

        if (acao.equals("cad_usuario")) {
            usuario.setNome(request.getParameter("txtNome"));
            usuario.setEmail(request.getParameter("txtEmail"));
            usuario.setSenha(request.getParameter("txtSenha"));

            if (ctrl.validarDados(usuario)) {
                if (dao.verificarNomeExistente(usuario.getNome())) {
                    request.setAttribute("msg", "Ops!!! Nome já está em uso. Por favor, escolha outro nome.");
                    abrir = erro;
                } else if (dao.verificarEmailExistente(usuario.getEmail())) {
                    request.setAttribute("msg", "Ops!!! E-mail já está em uso. Por favor, escolha outro e-mail.");
                    abrir = erro;
                } else {
                    if (dao.create(usuario)) {
                        request.setAttribute("msg", "OK!!! Usuário cadastrado com sucesso!");
                        abrir = "index.jsp";
                    } else {
                        abrir = erro;
                        request.setAttribute("msg", "Ops!!! Erro ao tentar cadastrar usuário!");
                    }
                }
            }
        } else if (acao.equals("atualizar")) {
            Usuario usuario = new Usuario();
            usuario.setCodigo(Integer.parseInt(request.getParameter("codigo")));
            usuario.setNome(request.getParameter("txtNome"));
            usuario.setEmail(request.getParameter("txtEmail"));
            usuario.setSenha(request.getParameter("txtSenha"));

            if (dao.update(usuario)) {
                abrir = sucesso;
                request.setAttribute("msg", "Ok!!! Usuário atualizado com sucesso!");
            } else {
                abrir = erro;
                request.setAttribute("msg", "Ops!!! Erro ao tentar atualizar usuário!");
            }

        }
        RequestDispatcher visualizar = request.getRequestDispatcher(abrir);
        visualizar.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
