package control;

import dao.AlbumDAO;
import dao.ArtistaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Album;

public class Album_servlet extends HttpServlet {

    Album album = new Album();
    AlbumDAO dao = new AlbumDAO();
    Album_ctrl ctrl = new Album_ctrl();
    ArtistaDAO daoArtista = new ArtistaDAO();

    String sucesso = "sucesso.jsp";
    String erro = "erro.jsp";
    String listar = "listar_album.jsp";
    String cadastrar = "cadastro_album.jsp";
    String editar = "editar_album.jsp";
    String abrir = "";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //  processRequest(request, response);

        String acao = request.getParameter("acao");
        HttpSession sessao = request.getSession();

        if (acao.equals("cad_album")) {
            request.setAttribute("musicos", daoArtista.read());
            abrir = cadastrar;
        } else if (acao.equals("listar_album")) {
            abrir = listar;
            int usu = (int) sessao.getAttribute("user");
            request.setAttribute("usuario", usu);
            request.setAttribute("albuns", dao.read());
            
        } else if (acao.equals("editar")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            request.setAttribute("musicos", daoArtista.read());
            request.setAttribute("album", dao.listar_album(codigo));
            abrir = editar;

        } else if (acao.equals("excluir")) {
            int codigo = Integer.parseInt(request.getParameter("codigo"));
            if (dao.delete(codigo)) {
                abrir = sucesso;
                request.setAttribute("msg", "Excluído com sucesso");

            } else {
                abrir = erro;
                request.setAttribute("msg", "Erro ao excluir os dados, informações estão relacionadas ao músico");

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
        HttpSession sessao = request.getSession();

        if (acao.equals("cad_album")) {
            request.setAttribute("musicos", daoArtista.read());

            album.setNome(request.getParameter("txtNome"));
            album.setGravadora(request.getParameter("txtGrava"));
            album.setGenero(request.getParameter("txtGene"));
            album.setPopulariedade(Double.parseDouble(request.getParameter("selNota")));
            album.setOpiniao(request.getParameter("txtOpi"));
            album.setCodart(Integer.parseInt(request.getParameter("cbNome")));

            String dataNascimentoStr = request.getParameter("txtData");
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            Date dataLancamento = null;
            try {
                dataLancamento = dateFormat.parse(dataNascimentoStr);
            } catch (ParseException e) {

            }
            album.setLancamento(dataLancamento);
            int usu = (int) sessao.getAttribute("user");
            request.setAttribute("usuario", usu);
            album.setCodusuario(usu);

            if (dao.create(album)) {
                abrir = sucesso;
                request.setAttribute("msg", "Eba!!! Álbum cadastrado com sucesso!");

            } else {
                abrir = erro;
                request.setAttribute("msg", "Ops!!! Erro ao tentar cadastrar Álbum!");
            }
        } else if (acao.equals("atualizar")) {

            Album album = new Album();
            request.setAttribute("musicos", daoArtista.read());

            album.setCodigo(Integer.parseInt(request.getParameter("codigo")));
            album.setNome(request.getParameter("txtNome"));
            album.setGravadora(request.getParameter("txtGrava"));
            album.setGenero(request.getParameter("txtGene"));
            album.setPopulariedade(Double.parseDouble(request.getParameter("selNota")));
            album.setOpiniao(request.getParameter("txtOpi"));
            album.setCodart(Integer.parseInt(request.getParameter("cbNome")));

            try {
                String dataString = request.getParameter("txtData");

                Date dataLancamento = null;

                SimpleDateFormat formatoData1 = new SimpleDateFormat("yyyy-MM-dd");
                SimpleDateFormat formatoData2 = new SimpleDateFormat("dd/MM/yyyy");
                SimpleDateFormat formatoData3 = new SimpleDateFormat("dd-MM-yyyy");

                try {
                    dataLancamento = formatoData1.parse(dataString);
                } catch (ParseException e1) {
                    try {
                        dataLancamento = formatoData2.parse(dataString);
                    } catch (ParseException e2) {
                        try {
                            dataLancamento = formatoData3.parse(dataString);
                        } catch (ParseException e3) {
                            response.getWriter().println("Erro ao atualizar dados do álbum: a data de lançamento não está no formato correto.");
                            return;
                        }
                    }
                }

                album.setLancamento(dataLancamento);

                response.getWriter().println("Álbum atualizado com sucesso!");
            } catch (IOException e) {
                response.getWriter().println("Erro de E/S ao atualizar dados do álbum.");
            }

            if (dao.update(album)) {
                abrir = sucesso;
                request.setAttribute("msg", "Eba!!! Álbum atualizado com sucesso!");
            } else {
                abrir = erro;
                request.setAttribute("msg", "Ops!!! Erro ao tentar atualizar álbum!");

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
