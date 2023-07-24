<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
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
        <title>MUBRAIN - EDIÇÃO DE USUÁRIO</title>  
        <link rel="icon" type="image/x-icon" href="favicon.ico">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <jsp:include page="menu_logon.jsp" />
        <div class="container" style="margin-top: 130px;">
            <div class="mt-5 px-5">
                <form action="serus" method="POST" name="frm_cad_usuario" id="frm_cad_usuario"> 
                    <input type="hidden" value="${usuario.codigo}" id="codigo" name="codigo">
                    <label for="txtNome" style="color: white">Nome do usuário: </label>
                    <input  value="${usuario.nome}" class="form-control" type="text" id="txtNome" name="txtNome" placeholder="Seu nome aqui"> 
                    <br>
                    <label for="txtEmail" style="color: white">E-mail do usuário: </label>
                    <input value="${usuario.email}" class="form-control" type="email" id="txtEmail" name="txtEmail" placeholder="EX: contato@mubrain.com" > 
                    <br>
                    <label for="txtSenha" style="color: white">Senha: </label>
                    <input value="${usuario.senha}" class="form-control" type="password" id="txtSenha" name="txtSenha" maxlength="8" placeholder="00000000">
                    <span class="password-toggle-icon" onclick="togglePasswordVisibility('txtSenha')">
                        <i class="far fa-eye"></i>
                    </span>                    
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
        <script src="js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">
                        function togglePasswordVisibility(inputId) {
                            var input = document.getElementById(inputId);
                            if (input.type === 'password') {
                                input.type = 'text';
                            } else {
                                input.type = 'password';
                            }
                        }


        </script>
    </body>


</html>
