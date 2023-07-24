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
        <title>MuBrain - LISTA DE MÚSICOS</title> 
   <link rel="icon" type="image/x-icon" href="favicon.ico">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
                        <th style="color: white;">Função</th>
                        <th style="color: white;">Sexo</th>
                        <th style="color: white;">Autor</th>
                        <th style="color: white;">Nome da banda</th>
                        <th style="color: white;">Data de nascimento</th>
                        <th class="text-center" style="color: white;">Menu</th>                    
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${musicos}" var="musico">
                        <tr>
                            <td style="color: white;"><c:out value="${musico.codigo}"/></td>
                            <td style="color: white;"><c:out value="${musico.nome}"/></td>
                            <td style="color: white;"><c:out value="${musico.funcao}"/></td>
                            <td style="color: white;"><c:out value="${musico.sexo}"/></td>
                            <c:choose>
                                <c:when test="${musico.autor}">
                                    <td style="color: white;"><c:out value="Sim"/></td>                  
                                </c:when>
                                <c:otherwise>
                                    <td style="color: white;"><c:out value="Não"/></td>   
                                </c:otherwise>
                            </c:choose>   
                            <td style="color: white;"><c:out value="${musico.nome_banda}"/></td>
                            <td style="color: white;"><c:out value="${musico.nascimento}"/></td> 
                            <td class="text-center">
                                <c:choose >
                                    <c:when test="${usuario == musico.codusuario }">
                                        <a href="serar?acao=editar&codigo=${musico.codigo}" class="btn btn-primary" >Editar</a>

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
