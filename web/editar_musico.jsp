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
        <title>MUBRAIN - EDITAR MÚSICO</title>  

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <jsp:include page="menu_logon.jsp"/>
        <div class="container" style="margin-top: 130px;">
           
            <div class="mt-5 px-5">
                <form action="serar" method="POST" name="frm_cad_artista" id="frm_cad_artista"> 
                    
                    <input type="hidden" value="${musico.codigo}" id="codigo" name="codigo">
                     <label for="txtNome" style="color: white">Nome:  </label>
                    <input value="${musico.nome}" class="form-control opacity-select" maxlength="120" type="text" id="txtNome" name="txtNome" placeholder="Nome aqui"  > 
                    <br>
                     <label for="txtFun" style="color: white">Função : </label>
                    <input value="${musico.funcao}" maxlength="90" class="form-control opacity-select" type="text" id="txtFun" name="txtFun" placeholder="EX: Cantor ou guitarista ou baterista"  > 
                    <br>
                    <br>
                    <label for="selSexo" style="color: white">Sexo: </label>
                    <select class="form-control opacity-select" id="selSexo" name="selSexo">
                        <c:choose>
                            <c:when test="${musico.sexo == 'M'}">
                                <option value="M" selected>Masculino</option>
                                <option value="F">Feminino</option>
                            </c:when>
                            <c:otherwise>
                                <option value="M">Masculino</option>
                                <option value="F" selected>Feminino</option>
                            </c:otherwise>
                        </c:choose>
                    </select>
                    <br>
                    <div class="form-check">
                        <c:choose>
                            <c:when test="${musico.autor}">
                                <input  checked type="checkbox" class="form-check-input" id="opautor" name="opautor">
                            </c:when>
                            <c:otherwise>                                
                                <input  type="checkbox" class="form-check-input" id="opautor" name="opautor">
                            </c:otherwise>
                        </c:choose>
                        <label class="form-check-label" for="opautor">Marque aqui se ele for <code>AUTOR</code> da música</label>
                    </div>
                    <br>
                    <label for="txtBanda" style="color: white">Nome da banda:  </label>
                    <input value="${musico.nome_banda}" maxlength="120" class="form-control opacity-select" type="text" id="txtBanda" name="txtBanda" placeholder="Ex: Maroon 5"  > 
                    <br/>
                   <label for="txtNasc" style="color: white">Data de nascimento:  </label>
                    <input value="${musico.nascimento}" class="form-control opacity-select" type="text" id="txtNasc" name="txtNasc" > 
                    <br/>
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
        <jsp:include page="rodape.jsp"/>
    </body>
</html>
