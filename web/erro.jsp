
<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Refresh" content="3;url=index.jsp">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro</title>
        <!-- Latest compiled and minified CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <body onload="document.getElementById('myModal').style.display = 'block'">
        <%@include file="menu_login.jsp" %>
        <!-- The Modal -->
        <div class="modal" id="myModal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content bg-danger">

                    <!-- Modal Header -->
                    <div class="modal-header alert alert-danger bg-danger">
                        <h4 class="modal-title">Erro</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body bg-danger">
                        <h4 class="bg-danger">${msg}</h4>
                    </div> 
                </div>
            </div>
        </div>

        <div class="modal" id="erroModal" tabindex="-1" role="dialog" aria-labelledby="erroModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-danger">
                        <h5 class="modal-title" id="erroModalLabel">Erro</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body bg-danger">
                        <p>${msg}</p>
                    </div>
                </div>
            </div>
        </div>           
    </body>    
</html>
