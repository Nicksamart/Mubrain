
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>



        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>MuBrain - Músicas e Opiniões</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <link rel="icon" type="image/x-icon" href="favicon.ico">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Alegreya+Sans+SC:wght@700&display=swap" rel="stylesheet">


        <style>


            .carousel-caption {
                /* Estilos das legendas */
                margin: 500px;
                padding: 100px;
                margin-left: -420px;

            } 
        </style>
    </head>
    <body>
        <jsp:include page="menu_login.jsp"/>
        <div id="demo" class="carousel slide" data-bs-ride="carousel">





            <div class="carousel-inner" style="background: #6E13C8; height: 1100px; display: flex;">
                <div class="carousel-item active" style="flex: 1;">
                    <img src="img1.svg" alt="Menina na aula" class="d-block" style="max-width: 24%; height: auto; margin-right: 20px; align-self: center;">
                    <div class="carousel-caption" style="color: orange; font-family: 'Alegreya Sans SC', sans-serif; margin-top: -350px; margin-left: -500px;">
                        <h3 style="font-size: 20px">MuBrain: O seu portal para explorar e cadastrar a sua trilha sonora pessoal</h3>

                    </div>
                </div>
                <div class="carousel-item">
                    <img src="library.svg" alt="Menina com a professora" class="d-block w-100" style="max-width: 60%;
                         height: 1300px;
                         margin-right: 10px; /* Margem à direita para separação */
                         display: flex; /* Para alinhar os itens */
                         align-items: center; /* Alinha verticalmente ao centro */
                         margin-top: -180px;">
                    <div class="carousel-caption" style="color: orange; font-family: 'Alegreya Sans SC', sans-serif; text-align: right; margin-right: -280px ">
                        <h3 style="font-size: 20px">Organize suas músicas com facilidade no MuBrain </h3>

                    </div>

                </div>

                <div class="carousel-item" >
                    <img src="img3.svg" alt="Jovem no computador" class="d-block w-100" style="max-width: 50%;
                         height: 1300px;
                         margin-right: 10px;
                         margin-top: -160px;/* Margem à direita para separação */
                         display: flex; /* Para alinhar os itens */
                         align-items: center; /* Alinha verticalmente ao centro */">
                    <div class="carousel-caption"  style="font-family:  'Alegreya Sans SC', sans-serif; text-align: right; margin-right: -200px">
                        <h3 style="color: orange; margin-right: 20px">"A música é a linguagem universal que transcende as fronteiras,
                            <br>
                            <h3 style="color: orange; margin-right: 160px; font-size: 20px"> unindo pessoas e criando harmonia entre os seres."</h3>
                        </h3>
                        <p style="font-size: 20px"> - Lucas Santos, 2023</p>
                    </div>
                </div>
            </div>
        </div>





        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>
    

    <jsp:include page="rodape_1.jsp" />
</body>
</html>
