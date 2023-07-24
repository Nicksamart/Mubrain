

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
           <link rel="icon" type="image/x-icon" href="favicon.ico">
        <title>Login - MuBrain</title>
        <style>
             body{
                background-color: #6E13C8;
            }
            .card {
                border: none;
                border-top: 5px solid rgb(176, 106, 252);
                background: #212042;
                color: #57557A;
            }


            p{
                font-weight: 600;
                font-size: 15px;
            }
            .fab{
                display: flex;
                justify-content: center;
                align-items: center;
                border: none;
                background: #2A284D;
                height: 40px;
                width: 90px;
            }

            
            .division{
                float: none;
                position: relative;
                margin: 30px auto 20px;
                text-align: center;
                width: 100%;
                box-sizing: border-box;
            }
            .division .line{
                border-top: 1.5px solid;
                position: absolute;
                top: 13px;
                width: 85%;
            }
            .line.l{
                left: 52px;
            }
            .line.r{
                right: 45px;

            }
            .division span{
                font-weight: 600;
                font-size: 14px;
            }
            .myform{
                padding: 0 25px 0 33px;
            }
            .form-control{
                border: 1px solid #57557A;
                border-radius: 3px;
                background: #212042;
                margin-bottom: 20px;
                letter-spacing: 1px;
                color: #ffffff;

            }
            .form-control:focus{
                border: 1px solid #57557A;
                border-radius: 3px;
                box-shadow: none;
                background: #735BA4;
                color: #ffff;
                letter-spacing: 1px;
            }
            .bn{
                text-decoration: underline;
            }
            .bn:hover{
                cursor: pointer;
            }
            .form-check-input {
                margin-top: 8px!important;
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
            small{
                color: #F2CEFF;
            }
            .far.fa-user{
                font-size: 13px;
            }

            @media(min-width: 767px){
                .bn{
                    text-align: right;
                }
            }
            @media(max-width: 767px){
                .form-check{
                    text-align: center;
                }
                .bn{
                    text-align: center;
                    align-items: center;
                }
            }
            @media(max-width: 450px){
                .fab{
                    width: 100%;
                    height: 100%;
                }
                .division .line{
                    width: 50%;
                }
            }
        </style>
    </head>
    <body>
       <div class="container">
	<div class="row d-flex justify-content-center mt-5">
		<div class="col-12 col-md-8 col-lg-6 col-xl-5">
			<div class="card py-3 px-2">
				<p class="text-center mb-3 mt-2">Login</p>
				<div class="row mx-auto ">
					<div class="col-4">
						<i class="fab fa-twitter"></i>
					</div>
					<div class="col-4">
						<i class="fab fa-facebook"></i>
					</div>
					<div class="col-4">
						<i class="fab fa-google"></i>
					</div>
				</div>
				<div class="division">
					<div class="row">
						<div class="col-3"><div class="line l"></div></div>
						<div class="col-6"><span>Dados do usuário</span></div>
						<div class="col-3"><div class="line r"></div></div>
					</div>
				</div>
				<form class="myform">
					<div class="form-group">
                                              <label for="email-login">Email:</label>
    					<input type="email" class="form-control">
  					</div>
 					<div class="form-group">
                                              <label for="Senha-login">Senha:</label>
                                            <input type="password" class="form-control">
  					</div>
  					<div class="row">
  						<div class="col-md-6 col-12">
  							<div class="form-group form-check">
    							<input type="checkbox" class="form-check-input" id="exampleCheck1">
    							<label class="form-check-label" for="exampleCheck1">Lembre-me meus dados</label>
  							</div>
  						</div>
  						<div class="col-md-6 col-12 bn">Esqueci minha senha</div>
  					</div>
  					<div class="form-group mt-3">
  						<button type="button" class="btn btn-block btn-primary btn-lg"><small><i class="far fa-user pr-2"></i>Conectar-se</small></button>
  					</div>
				</form>
			</div>
		</div>
	</div>
</div>
    </body>
</html>
