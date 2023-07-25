<%-- 
    Document   : index
    Created on : 27/04/2023, 14:37:49
    Author     : Nicholas
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MuBrain - Seu Site de Músicas e Opiniões</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <link rel="icon" type="image/x-icon" href="favicon.ico">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <div style="margin-top: 110px;">
        <jsp:include page="menu_logon.jsp" />
        
        <br>
        <br>
        <jsp:include page="cads.jsp"/>
        <br>
        <br>
        <jsp:include page="rodape.jsp" />
        </div>
    </body>
</html>
