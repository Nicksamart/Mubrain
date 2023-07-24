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
        <title>MuBrain Listagem de Singles</title>  

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
                        <th style="color: white;">Nome</th>
                        <th style="color: white;">Notas</th>
                        <th style="color: white;">Código do Usuário</th>
                        <th style="color: white;">Letras</th>
                        <th style="color: white;">Opinião</th>
                        <th style="color: white;">Cantor ou banda</th>
                        <th class="text-center" style="color: white;">Menu</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${musicas_avulsas}" var="musica">
                        <tr>
                            <td style="color: white;"><c:out value="${musica.codigo}"/></td>
                            <td style="color: white;"><c:out value="${musica.nome}"/></td>
                            <td style="color: white;"><c:out value="${musica.populariedade}"/></td>
                            <td style="color: white;"><c:out value="${musica.codusuario}"/></td>                           
                            <td style="color: white;"><c:out value="${musica.letras}"/></td>
                            <td style="color: white;"><c:out value="${musica.opiniao}"/></td>
                            <td style="color: white;"><c:out value="${musica.cantor_banda}"/></td>
                            <td class="text-center">                                       
                                <c:choose>
                                    <c:when test="${usuario==musica.codusuario}">
                                        <a href="serma?acao=editar&codigo=${musica.codigo}" class="btn btn-primary" >Editar</a>
                                        <a href="serma?acao=excluir&codigo=${musica.codigo}" class="btn">
                                            <img src="lixeira.png" alt="Excluir">
                                        </a>                                    
                                    </c:when>                                    
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>                  
            </table>
        </div> 
        <br>
        <br>
        <jsp:include page="rodape.jsp" />
    </body>
</html>
