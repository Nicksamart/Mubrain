<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    HttpSession sessao = request.getSession();

    if (sessao.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .btn-primary{
                background: linear-gradient(135deg, rgba(176,106,252,1) 39%,rgba(116,17,255,1) 101%);
                border: none;
                border-radius: 50px;
            }

            .btn-primary:focus{
                box-shadow: none;
                border: none;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="favicon.ico">
        <title>MUBRAIN - PERFIL DO USUÁRIO</title>  

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <jsp:include page="menu_logon.jsp" />
        <div class="container" style="margin-top: 125px;">

            <table class="table table-striped">
                <thead>
                <tr>
                    <th style="color: white;">ID</th>
                    <th style="color: white;">Nome do usuário</th>
                    <th style="color: white;">E-mail</th>
                    <th style="color: white;">Senha</th>
                    <th class="text-center" style="color: white;">Menu</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${usuarios}" var="usuario">
                        <c:if test="${usuario.codigo eq user}">
                            <tr>
                                <td style="color: white;"><c:out value="${usuario.codigo}"/></td>
                                <td style="color: white;"><c:out value="${usuario.nome}"/></td>
                                <td style="color: white;"><c:out value="${usuario.email}"/></td>                           
                                <td style="color: white;">
                                    <span style="display: none;"><c:out value="${usuario.senha}"/></span>
                                    ****
                                </td>
                                <td class="text-center">
                                    <a href="serus?acao=editar&codigo=${usuario.codigo}" class="btn btn-primary" >Editar</a>
                                    <button class="btn" data-bs-toggle="modal" data-bs-target="#confirmDeleteModal_${usuario.codigo}">
                                        <img src="lixeira.png" alt="descrição_da_imagem">
                                    </button>
                               

                                </td>
                            </tr>
                            <!-- Modal de confirmação de exclusão -->
                        <div class="modal fade" id="confirmDeleteModal_${usuario.codigo}" tabindex="-1" aria-labelledby="confirmDeleteModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="confirmDeleteModalLabel">Confirmação de Exclusão</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Você tem certeza que deseja excluir sua conta?</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                        <a href="serus?acao=excluir&codigo=${usuario.codigo}" class="btn" value="logout">
                                                <img src="lixeira.png" alt="descrição_da_imagem">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <br>
        <br>
        <jsp:include page="rodape.jsp" />
    </body>
</html>
