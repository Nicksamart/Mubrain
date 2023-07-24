/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.ArtistaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Artista;

/**
 *
 * @author nicho
 */
public class Artista_servlet extends HttpServlet {

    Artista artista = new Artista();
    ArtistaDAO dao = new ArtistaDAO();
    Artista_ctrl ctrl = new Artista_ctrl();

    String sucesso = "sucesso.jsp";
    String erro = "erro.jsp";
    String listar = "listar_musico.jsp";
    String cadastrar = "cadastro_musico.jsp";
    String editar = "editar_musico.jsp";
    String abrir = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

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
        //  processRequest(request, response);
        String acao = request.getParameter("acao");

        HttpSession sessao = request.getSession();

        if (acao.equals("cad_artista")) {

            request.setAttribute("musicos", dao.read());

            abrir = cadastrar;
        } else if (acao.equals("listar_musico")) {
            abrir = listar;

            int usu = (int) sessao.getAttribute("user");

            request.setAttribute("musicos", dao.read());
            request.setAttribute("usuario", usu);
        } else if (acao.equals("editar")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));

            abrir = editar;
            request.setAttribute("musico", dao.listar_artista(codigo));

        } else if (acao.equals("excluir")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            if (dao.delete(codigo)) {
                abrir = sucesso;
                request.setAttribute("msg", "Excluído com sucesso");

            } else {
                abrir = erro;
             request.setAttribute("msg", "Erro ao excluir os dados, informações está relacionadas ao álbum");

            }
        }

        RequestDispatcher visualizar = request.getRequestDispatcher(abrir);
        visualizar.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
        String acao = request.getParameter("acao");
        HttpSession sessao = request.getSession();

        if (acao.equals("cad_artista")) {
            artista.setNome(request.getParameter("txtNome"));
            artista.setFuncao(request.getParameter("txtFun"));
            artista.setSexo(request.getParameter("selSexo"));
            artista.setNome_banda(request.getParameter("txtBanda"));

            boolean autor = request.getParameter("opautor") != null;
            artista.setAutor(autor);

            String dataNascimentoStr = request.getParameter("txtNasc");
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date dataNascimento = null;
            try {
                dataNascimento = dateFormat.parse(dataNascimentoStr);
            } catch (ParseException e) {

            }
            artista.setNascimento(dataNascimento);

            int usu = (int) sessao.getAttribute("user");
            request.setAttribute("usuario", usu);
            artista.setCodusuario(usu);

            if (ctrl.validarDados(artista)) {
                if (dao.create(artista)) {
                    request.setAttribute("msg", "OK!!! Músico cadastrado com sucesso!");
                    abrir = sucesso;
                } else {
                    abrir = erro;
                    request.setAttribute("msg", "Ops!!! Erro ao tentar cadastrar músico!");
                }
            }
        } else if (acao.equals("atualizar")) {
            Artista arti = new Artista();
            arti.setCodigo(Integer.parseInt(request.getParameter("codigo")));
            arti.setNome(request.getParameter("txtNome"));
            arti.setFuncao(request.getParameter("txtFun"));
            arti.setSexo(request.getParameter("selSexo"));
            arti.setNome_banda(request.getParameter("txtBanda"));

            boolean autor = request.getParameter("opautor") != null;
            arti.setAutor(autor);

            try {
                String dataString = request.getParameter("txtNasc");

                Date dataNascimento = null;

                SimpleDateFormat formatoData1 = new SimpleDateFormat("yyyy-MM-dd");
                SimpleDateFormat formatoData2 = new SimpleDateFormat("dd/MM/yyyy");
                SimpleDateFormat formatoData3 = new SimpleDateFormat("dd-MM-yyyy");

                try {
                    dataNascimento = formatoData1.parse(dataString);
                } catch (ParseException e1) {
                    try {
                        dataNascimento = formatoData2.parse(dataString);
                    } catch (ParseException e2) {
                        try {
                            dataNascimento = formatoData3.parse(dataString);
                        } catch (ParseException e3) {
                            response.getWriter().println("Erro ao atualizar dados do músico: a data do músico não está no formato correto.");
                            return;
                        }
                    }
                }

                arti.setNascimento(dataNascimento);

                response.getWriter().println("Artista atualizada com sucesso!");
            } catch (IOException e) {
                response.getWriter().println("Erro de E/S ao atualizar dados do músico.");
            }

            if (dao.update(arti)) {
                abrir = sucesso;
                request.setAttribute("msg", "Ok!!! Músico atualizado com sucesso!");
            } else {
                abrir = erro;
                request.setAttribute("msg", "Ops!!! Erro ao tentar atualizar músico!");

                System.out.println("outro erros: " + arti.getNome() + arti.getNome_banda() + arti.getFuncao() + arti.getSexo() + arti.getAutor() + arti.getNascimento());
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
