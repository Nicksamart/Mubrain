<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MuBrain - Cadastro de Usuário</title>  

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body>
        <jsp:include page="menu_logon.jsp"/>
        <div class="container mt-5">
      
            <div class="mt-5 px-5">
                <form action="serus" method="POST" name="frm_cad_usuario" id="frm_cad_usuario"> 
                    <label for="txtNome">Nome do usuário: </label>
                    <input class="form-control" type="text" id="txtNome" name="txtNome" placeholder="Seu nome aqui"> 
                    <br>
                    <label for="txtEmail">E-mail do usuário: </label>
                    <input class="form-control" type="email" id="txtEmail" name="txtEmail" placeholder="EX: contato@mubrain.com" required > 
                    <br>
                    <label for="txtSenha">Senha: </label>
                    <input class="form-control" type="password" id="txtSenha" name="txtSenha" maxlength="8" placeholder="00000000" required >                    
                    <br>                 
                    <input type="hidden" value="cad_usuario" id="acao" name="acao">
                   <input class="btn  btn-primary" type="submit" value="Enviar dados">
                    <a href="javascript:history.back()" class="btn btn-warning">Voltar</a>
                </form>
            </div>
        </div>  
        <br>
        <br>
        <jsp:include page="rodape.jsp"/>
    </body>
</html>
