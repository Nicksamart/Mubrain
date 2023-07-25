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
        <title>MUBRAIN - LISTA DE ÁLBUNS</title>  

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="icon" type="image/x-icon" href="favicon.ico">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <jsp:include page="menu_logon.jsp"/>
        <div class="container" style="margin-top: 130px;">

            <table class="table table-striped">
                <thead>
                    <tr>

                        <th style="color: white;">ID</th>
                        <th style="color: white;">Nome</th>
                        <th style="color: white;">Lançamento</th>
                        <th style="color: white;">Gravadora</th>
                        <th style="color: white;">Gênero</th>
                        <th style="color: white;">Notas</th>
                        <th style="color: white;">Opinião</th>
                        <th style="color: white;">Músico</th>
                        <th style="color: white;" class="text-center">Menu</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${albuns}" var="album">
                        <tr>
                            <td style="color: white;" ><c:out value="${album.codigo}"/></td>
                            <td style="color: white;" ><c:out value="${album.nome}"/></td>
                            <td style="color: white;"><c:out value="${album.lancamento}"/></td>
                            <td style="color: white;"><c:out value="${album.gravadora}"/></td>
                            <td style="color: white;"><c:out value="${album.genero}"/></td>
                            <td style="color: white;"><c:out value="${album.populariedade}"/></td>
                            <td style="color: white;"><c:out value="${album.opiniao}"/></td> 
                            <td style="color: white;"><c:out value="${album.codart}"/></td>
                            <td class="text-center">
                                <c:choose >
                                    <c:when test="${usuario == album.codusuario}">
                                        <a href="seral?acao=editar&codigo=${album.codigo}" class="btn btn-primary" >Editar</a>

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
        <jsp:include page="rodape.jsp"/>
    </body>
</html>
