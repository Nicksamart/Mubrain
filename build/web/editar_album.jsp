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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MUBRAIN - EDIÇÃO DE ÁLBUNS</title>  

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
                opacity: 0.2;
            }
            .opacity-select {
                opacity: 0.2;
            }

        </style>
    </head>
    <body>
        <jsp:include page="menu_logon.jsp"/>
        <div class="container" style="margin-top: 130px;">
         
            <div class="mt-5 px-5">
                <form action="seral" method="POST" > 
                    
                    <input type="hidden" value="${album.codigo}" id="codigo" name="codigo">
                 <label for="txtNome"  style="color: white">Nome do álbum: </label>
                    <input value="${album.nome}" maxlength="200" class="form-control opacity-select" type="text" id="txtNome" name="txtNome" placeholder="Nome aqui" required > 
                    <br>
                   <label for="txtData"  style="color: white">Data de lançamento: </label>
                    <input value="${album.lancamento}" class="form-control opacity-select" type="text" id="txtData" name="txtData"   > 
                    <br>
                    <label for="txtGrava"  style="color: white">Nome da gravadora: </label>
                    <input value="${album.gravadora}" maxlength="95" class="form-control opacity-select" type="text" id="txtGrava" name="txtGrava"  > 
                    <br>
                     <label for="txtGene"  style="color: white">Gênero: </label>
                    <input value="${album.genero}" maxlength="95" class="form-control opacity-select" type="text" id="txtGene" name="txtGene"  > 
                    <br>
                    <label for="selNota"  style="color: white">Nota: </label>
                    <select class="form-control opacity-select" id="selNota" name="selNota">
                        <option value="0" ${album.populariedade == 0 ? 'selected' : ''}>0</option>
                        <option value="1" ${album.populariedade == 1 ? 'selected' : ''}>1</option>
                        <option value="2" ${album.populariedade == 2 ? 'selected' : ''}>2</option>
                        <option value="3" ${album.populariedade == 3 ? 'selected' : ''}>3</option>
                        <option value="4" ${album.populariedade == 4 ? 'selected' : ''}>4</option>
                        <option value="5" ${album.populariedade == 5 ? 'selected' : ''}>5</option>
                        <option value="6" ${album.populariedade == 6 ? 'selected' : ''}>6</option>
                        <option value="7" ${album.populariedade == 7 ? 'selected' : ''}>7</option>
                        <option value="8" ${album.populariedade == 8 ? 'selected' : ''}>8</option>
                        <option value="9" ${album.populariedade == 9 ? 'selected' : ''}>9</option>
                        <option value="10" ${album.populariedade == 10 ? 'selected' : ''}>10</option>
                    </select>

                    <br>
                    <label for="txtOpi"  style="color: white">Opinião: </label>
                    <textarea class="form-control opacity-select" rows="15" id="txtOpi" name="txtOpi">${album.opiniao}</textarea>
                    <br>
                    <br>
                    <label for="cbNome"  style="color: white">Nome do músico: </label>
                    <select class="form-control opacity-select" name="cbNome" id="cbNome" >   
                        <c:forEach items="${musicos}" var="musico" >
                            <option value="${musico.codigo}">${musico.nome}</option>  
                        </c:forEach>
                    </select>     
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
        <jsp:include page="rodape.jsp"/>
    </body>
</html>
