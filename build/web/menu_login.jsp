<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="icon" type="image/x-icon" href="favicon.ico">
<style>
    .navbar {
        list-style-type: none;
        padding: 0;
        margin: 0;
        display: flex;
    }

    .navbar li {
        margin-right: 40px; /* Ajuste a margem conforme necessário */
    }
    .nav-item-logo{
        max-width: 10px; /* Ajuste o tamanho máximo da imagem conforme necessário */
        max-height: 50px; /* Ajuste a altura máxima da imagem conforme necessário */
        margin-right: 10px; /* Margem à direita para separação */
    }



    .modal-content {
        background-color: #6E13C8;
        opacity: 0.8;/* roxo escuro */
    }

    .modal-content {
        border: none;
    }

    .btn-primary{
        background: linear-gradient(135deg, rgba(176,106,252,1) 39%,rgba(116,17,255,1) 101%);
        border: none;
        border-radius: 50px;
    }

    .btn-primary:focus{
        box-shadow: none;
        border: none;
    }

    .modal-title {
        color: white; /* cor do texto do título */
    }

    .btn-warning{
        background: linear-gradient(135deg, rgba(176,106,252,1) 39%,rgba(116,17,255,1) 101%);
        border: none;
        border-radius: 50px;
    }

    .btn-warning{
        box-shadow: none;
        border: none;
    }








</style>
<nav class="navbar fixed-top navbar-expand-lg" id="nav1" style="background-color: transparent;">

    <div class="container">

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">

                <li class="nav-item">
                    <a href="index.jsp">
                        <img src="prin.png" alt="Imagem Principal" title="Homepage">
                    </a>
                </li>
                <li class="nav-item">
                    <a href="contato.jsp">
                        <img src="enve.png" alt="Imagem Email" title="Contato">
                        </li>
                        <li class="nav-item" >
                            <a href="sobre.jsp">
                                <img src="Info.png" alt="Imagem Sobre" title="Sobre Nós">
                                </li>
                                </li>
                                </ul>
                                <ul class="navbar-nav ms-auto">
                                    <li class="nav-item dropdown">

                                    <li>


                                        </a>
                                    </li>                     

                                </ul>
                        </li>
                        <li>
                            <a class="nav-link text-custom cadastro-link" href="#" data-bs-toggle="modal" data-bs-target="#cadastroModal">
                                <img src="cadastro.png" alt="Minha Foto" title="Área de cadastro">
                            </a>

                        </li>
                        <li>
                            <a class="nav-link text-custom login-link" href="#" data-bs-toggle="modal" data-bs-target="#loginModal">
                                <img src="acesso.png" alt="Minha Foto" title="Login">
                            </a>
                        </li>
            </ul>
        </div>
    </div>
</nav> 

<div class="modal fade" id="cadastroModal" tabindex="-1" aria-labelledby="cadastroModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="cadastroModalLabel" style="color: white;">Cadastro</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="serus" method="POST" name="frm_cad_usuario" id="frm_cad_usuario"> 
                    <h3 style="color: white;">DADOS DO USUÁRIO</h3>
                    <br>
                    <label for="txtNome" style="color: white;">Nome do usuário: </label>
                    <input class="form-control" type="text" id="txtNome" name="txtNome" placeholder="Seu nome aqui" required style="background-color: #EDCAFF;">
                    <br>
                    <label for="txtEmail" style="color: white;">E-mail do usuário: </label>
                    <input class="form-control" type="email" id="txtEmail" name="txtEmail" placeholder="EX: contato@gmail.com" required style="background-color: #EDCAFF;" > 
                    <br>
                    <label for="pwd" style="color: white;">Senha: </label>
                    <input class="form-control" type="password" id="txtSenha" name="txtSenha" maxlength="8" placeholder="00000000" style="background-color: #EDCAFF;">
                    <span toggle="#txtSenha" class="fa fa-fw fa-eye field-icon toggle-password" onclick="togglePasswordVisibility(this)"></span>

                    <br>
                    <input type="hidden" value="cad_usuario" id="acao" name="acao">
                    <input class="btn btn-primary" type="submit" value="Enviar dados">
                    <input class="btn btn-warning " style="color: white;" type="reset" value="Limpar dados" >
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="cadastroModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginModal">Login</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="login" method="POST" name="frm_cad_login" id="frm_cad_login">
                    <div class="mb-3">
                        <label for="user" class="form-label" style="color: white;">E-mail</label>
                        <input type="email" class="form-control" id="user" name="user" maxlength="50" placeholder="Ex: mubrain@mubrain.com" style="background-color: #EDCAFF;">
                    </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label" style="color: white;">Senha</label>
                        <input type="password" class="form-control" id="pass" name="pass" maxlength="8" placeholder="0000000" style="background-color: #EDCAFF;">
                        <span toggle="#pass" class="fa fa-fw fa-eye field-icon toggle-password" onclick="togglePasswordVisibility(this)"></span>
                    </div>
                    <br>
                    <button class="btn btn-primary" type="submit" value="logar" name="acao">Login</button>

                </form>
            </div>
        </div>
    </div>
</div> 


<script src="js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
                            var nav = document.getElementById('nav1');
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

                            function togglePasswordVisibility(element) {
                                const input = document.querySelector(element.getAttribute('toggle'));
                                if (input.type === 'password') {
                                    input.type = 'text';
                                    element.classList.remove('fa-eye');
                                    element.classList.add('fa-eye-slash');
                                } else {
                                    input.type = 'password';
                                    element.classList.remove('fa-eye-slash');
                                    element.classList.add('fa-eye');
                                }
                            }

</script>