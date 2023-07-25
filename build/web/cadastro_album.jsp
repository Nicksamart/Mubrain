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
        <title>MUBRAIN - CADASTRO DE ÁLBUNS</title>  

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
                opacity: 0.4;
            }
            .opacity-select {
                opacity: 0.4;
            }
            

        </style>
    </head>
    <body>
        <jsp:include page="menu_logon.jsp"/>
        <div class="container" style="margin-top: 130px;">
        
            <div class="mt-5 px-5">
                <form action="seral" method="POST" > 
                    
                    <label for="txtNome"  style="color: white">Nome do álbum: </label>
                    <input class="form-control opacity-select" maxlength="200" type="text" id="txtNome" name="txtNome" placeholder="Nome aqui" required > 
                    <br>
                    <label for="txtData"  style="color: white">Data de lançamento: </label>
                    <input class="form-control opacity-select" type="text" id="txtData" name="txtData" placeholder="00/00/0000"  > 
                    <br>
                    <label for="txtGrava"  style="color: white">Nome da gravadora: </label>
                    <input class="form-control opacity-select" maxlength="95" type="text" id="txtGrava" name="txtGrava"  > 
                    <br>
                    <label for="txtGene"  style="color: white">Gênero: </label>
                    <input class="form-control opacity-select" maxlength="95" type="text" id="txtGene" name="txtGene"  > 
                    <br>
                    <label for="selNota"  style="color: white">Nota: </label>
                    <select class="form-control opacity-select" id="selNota" name="selNota">
                        <option value="0">0</option>
                        <option value="1">1</option>  
                        <option value="2">2</option>     
                        <option value="3">3</option>     
                        <option value="4">4</option>     
                        <option value="5">5</option>     
                        <option value="6">6</option>     
                        <option value="7">7</option>     
                        <option value="8">8</option>     
                        <option value="9">9</option>     
                        <option value="10">10</option>     
                    </select
                    <br>
                    <br>
                    <label for="txtOpi"  style="color: white">Opinião: </label>
                    <textarea class="form-control opacity-select" rows="15" id="txtOpi" name="txtOpi"></textarea>
                    <br>
                    <br>
                    <label for="cbNome"  style="color: white">Nome do músico: </label>
                    <select class="form-control opacity-select" name="cbNome" id="cbNome" >   
                        <c:forEach items="${musicos}" var="musico" >
                            <option value="${musico.codigo}">${musico.nome}</option>  
                        </c:forEach>
                    </select>                       
                    <br>
                    <input type="hidden" value="cad_album" id="acao" name="acao">
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
