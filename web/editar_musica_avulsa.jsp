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

            .opacity-input {
                opacity: 0.4;
            }
            .opacity-select {
                opacity: 0.4;
            }

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MUBRAIN - EDIÇÃO DE SINGLES</title>  

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <jsp:include page="menu_logon.jsp" />
        <div class="container" style="margin-top: 130px;">

            <div class="mt-5 px-5">
                <form action="serma" method="POST" name="frm_cad_musica" id="frm_cad_musica"> 

                    <input type="hidden" value="${musicas_avulsas.codigo}" id="codigo" name="codigo">
                    <label for="txtNome" style="color: white">Nome da música: </label>
                    <input value="${musicas_avulsas.nome}" maxlength="150" class="form-control opacity-select" type="text" id="txtNome" name="txtNome" > 
                    <br>
                    <label for="txtNota" style="color: white">Nota: </label>
                    <select class="form-control opacity-select" id="txtNota" name="txtNota">
                        <option value="0" ${musicas_avulsas.populariedade == 0 ? 'selected' : ''}>0</option>
                        <option value="1" ${musicas_avulsas.populariedade == 1 ? 'selected' : ''}>1</option>
                        <option value="2" ${musicas_avulsas.populariedade == 2 ? 'selected' : ''}>2</option>
                        <option value="3" ${musicas_avulsas.populariedade == 3 ? 'selected' : ''}>3</option>
                        <option value="4" ${musicas_avulsas.populariedade == 4 ? 'selected' : ''}>4</option>
                        <option value="5" ${musicas_avulsas.populariedade == 5 ? 'selected' : ''}>5</option>
                        <option value="6" ${musicas_avulsas.populariedade == 6 ? 'selected' : ''}>6</option>
                        <option value="7" ${musicas_avulsas.populariedade == 7 ? 'selected' : ''}>7</option>
                        <option value="8" ${musicas_avulsas.populariedade == 8 ? 'selected' : ''}>8</option>
                        <option value="9" ${musicas_avulsas.populariedade == 9 ? 'selected' : ''}>9</option>
                        <option value="10"${musicas_avulsas.populariedade == 10 ? 'selected' : ''}>10</option>
                    </select>
                    <br>                       
                    <c:forEach items="${usuario}" var="usu">
                        <c:if test="${usu.codigo == user}">
                            <input type="hidden" name="cbUsu" id="cbUsu" value="${usu.codigo}">
                        </c:if>
                    </c:forEach>
                    <br>
                    <label for="txtLetras" style="color: white">Letra da música:</label>
                    <textarea class="form-control opacity-select" rows="19" id="txtLetras" name="txtLetras">${musicas_avulsas.letras}</textarea>
                    <br>  
                    <label for="txtOpin" style="color: white">Opinião:</label>
                    <textarea class="form-control opacity-select" rows="19" id="txtOpin" name="txtOpin">${musicas_avulsas.opiniao}</textarea>
                    <br> 
                    <label for="txtNomeB" style="color: white">Nome da cantor ou banda: </label>
                    <input value="${musicas_avulsas.cantor_banda}" maxlength="60" class="form-control opacity-select" type="text" id="txtNomeB" name="txtNomeB" > 
                    <br>
                    <input type="hidden" value="atualizar" id="acao" name="acao">
                    <a href="javascript:history.back()" class="btn btn">
                        <img src="voltar.png" alt="Voltar">
                    </a>
                    <input class="btn btn-primary" type="submit" value="Enviar dados">
                </form>
            </div>
        </div>
        <br>
        <br>
        <jsp:include page="rodape.jsp" />
    </body>
</html>
