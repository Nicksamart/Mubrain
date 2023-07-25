<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    body{
        background-color: #6E13C8

    }

    .navbar {
        list-style-type: none;
        padding: 0;
        margin: 0;
        display: flex;
    }

    .navbar li {
        margin-right: 20px; /* Ajuste a margem conforme necessário */
    }


</style>

<nav class="navbar fixed-top navbar-expand-lg" id="nav2" style="background-color: transparent;">
    <div class="container">
        <a class="navbar-brand" href="index.jsp"><img src="favicon.ico" class="rounded-circle" id="logo" title="Homepage"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav"
                aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <br>
                <br>
                <li class="nav-item">
                    <a href="contato.jsp">
                        <img src="enve.png" alt="Imagem Envelope" title="Contato">
                    </a>
                <li class="nav-item" >
                    <a href="sobre.jsp">
                        <img src="Info.png" alt="Imagem Sobre" title="Sobre Nós">
                        </li>             
                        </ul>
                        <ul class="navbar-nav ms-auto">

                            <li class="nav-item dropdown">
                                <a class="nav-link  text-custom" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="icons8-concert-48.png" alt="Descrição da imagem" title="Músico" >

                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li>
                                        <a class="dropdown-item" href="cadastro_musico.jsp" style="display: flex; align-items: center; background-color: transparent">
                                            <img src="icons8-cadastro-48.png" alt="Descrição da imagem"  style="margin-right: 10px; color: orange;">
                                            <span style="color: orange;">Cadastrar</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a class="dropdown-item" href="serar?acao=listar_musico" style="display: flex; align-items: center;  background-color: transparent">
                                            <img src="icons8-mostrar-propriedade.-48 (1).png" alt="Descrição da imagem" style="margin-right: 10px;">
                                            <span style="color: orange;">Listar</span>
                                        </a>
                                    </li>

                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link  text-custom" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="icons8-cd-48.png" alt="Descrição da imagem" title="Álbum">

                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li>
                                        <a class="dropdown-item" href="seral?acao=cad_album" style="display: flex; align-items: center;  background-color: transparent">
                                            <img src="icons8-cadastro-48.png" alt="Descrição da imagem" style="margin-right: 10px;">
                                            <span style="color: orange;">Cadastrar</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a class="dropdown-item" href="seral?acao=listar_album" style="display: flex; align-items: center;  background-color: transparent">
                                            <img src="icons8-mostrar-propriedade.-48 (1).png" alt="Descrição da imagem" style="margin-right: 10px;">
                                            <span style="color: orange;">Listar</span>
                                        </a>
                                    </li>

                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link  text-custom" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="icon-musica.png" alt="Descrição da imagem" title="Música">

                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li>
                                        <a class="dropdown-item" href="sermu?acao=cad_musica" style="display: flex; align-items: center;  background-color: transparent">
                                            <img src="icons8-cadastro-48.png" alt="Descrição da imagem" style="margin-right: 10px;">
                                            <span style="color: orange;">Cadastro</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a class="dropdown-item" href="sermu?acao=listar_musica" style="display: flex; align-items: center;  background-color: transparent">
                                            <img src="icons8-mostrar-propriedade.-48 (1).png" alt="Descrição da imagem" style="margin-right: 10px;">
                                            <span style="color: orange;">Listar</span>
                                        </a>
                                    </li>


                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link  text-custom" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="icon-musica1.png" alt="Descrição da imagem" title="Single">

                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li>
                                        <a class="dropdown-item" href="serma?acao=cad_musicaAvulsa" style="display: flex; align-items: center;  background-color: transparent">
                                            <img src="icons8-cadastro-48.png" alt="Descrição da imagem"  style="margin-right: 10px;">
                                            <span style="color: orange;">Cadastro</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a class="dropdown-item" href="serma?acao=listar_musica_avulsa" style="display: flex; align-items: center;  background-color: transparent">
                                            <img src="icons8-mostrar-propriedade.-48 (1).png" alt="Descrição da imagem" style="margin-right: 10px;">
                                            <span style="color: orange;">Listar</span>
                                        </a>
                                    </li>

                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link  text-custom" href="serus?acao=listar_usuario" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="icons-usuario.png" alt="descrição_da_imagem" title="Usuário" >
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">

                                    <li><a class="dropdown-item" href="serus?acao=listar_usuario" style="display: flex; align-items: center;  background-color: transparent"> <span style="color: orange;">Perfil do usuário</span></a></li>
                                </ul>

                            </li>
                            <li class="nav-item ms-auto">
                                <span id="username" class="nav-link text-custom"></span>
                            </li>
                        </ul>
                        <form action="login" method="post">
                            <input type="hidden" name="acao" value="logout" />
                            <button class="btn " type="submit">
                                <img src="deixar.png" alt="descrição_da_imagem" title="Saída">
                            </button>

                        </form>
                        </div>
                        </div>
                        </nav>

                        <script src="js/bootstrap.bundle.min.js"></script>
                        <script type="text/javascript">
                            var nav = document.getElementById('nav2');
                            var navLinks = document.querySelectorAll('.nav-link.text-custom');

                            window.addEventListener('scroll', function () {
                                if (window.pageYOffset > 100) {
                                    nav.classList.add('bg-light', 'shadow');
                                    navLinks.forEach(function (link) {
                                        link.style.color = 'black';
                                    });
                                } else {
                                    nav.classList.remove('bg-light', 'shadow');
                                    navLinks.forEach(function (link) {
                                        link.style.color = 'white';
                                    });
                                }
                            });

                        </script>

