
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="pt-br">
<head>
 
  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre Nós - MUBRAIN</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <style>
      @import url("https://fonts.googleapis.com/css2?family=Baloo+2&display=swap");
$main-green: #79dd09 !default;
$main-green-rgb-015: rgba(121, 221, 9, 0.1) !default;
$main-yellow: #bdbb49 !default;
$main-yellow-rgb-015: rgba(189, 187, 73, 0.1) !default;
$main-red: #bd150b !default;
$main-red-rgb-015: rgba(189, 21, 11, 0.1) !default;
$main-blue: #0076bd !default;
$main-blue-rgb-015: rgba(0, 118, 189, 0.1) !default;

/* This pen */
body {
	font-family: "Baloo 2", cursive;
	font-size: 16px;
	color: #ffffff;
	text-rendering: optimizeLegibility;
	font-weight: initial;
}

.dark {
	background: #110f16;
}


.light {
	background: #f3f5f7;
}

a, a:hover {
	text-decoration: none;
	transition: color 0.3s ease-in-out;
}

#pageHeaderTitle {
	margin: 2rem 0;
	text-transform: uppercase;
	text-align: center;
	font-size: 2.5rem;
}

/* Cards */
.postcard {
  flex-wrap: wrap;
  display: flex;
  
  box-shadow: 0 4px 21px -12px rgba(0, 0, 0, 0.66);
  border-radius: 10px;
  margin: 0 0 2rem 0;
  overflow: hidden;
  position: relative;
  color: #ffffff;

	&.dark {
		background-color: #18151f;
	}
	&.light {
		background-color: #e1e5ea;
	}
	
	.t-dark {
		color: #18151f;
	}
	
  a {
    color: inherit;
  }
	
	h1,	.h1 {
		margin-bottom: 0.5rem;
		font-weight: 500;
		line-height: 1.2;
	}
	
	.small {
		font-size: 80%;
	}

  .postcard__title {
    font-size: 1.75rem;
  }

  .postcard__img {
    max-height: 180px;
    width: 100%;
    object-fit: cover;
    position: relative;
  }

  .postcard__img_link {
    display: contents;
  }

  .postcard__bar {
    width: 50px;
    height: 10px;
    margin: 10px 0;
    border-radius: 5px;
    background-color: #424242;
    transition: width 0.2s ease;
  }

  .postcard__text {
    padding: 1.5rem;
    position: relative;
    display: flex;
    flex-direction: column;
  }

  .postcard__preview-txt {
    overflow: hidden;
    text-overflow: ellipsis;
    text-align: justify;
    height: 100%;
  }

  .postcard__tagbox {
    display: flex;
    flex-flow: row wrap;
    font-size: 14px;
    margin: 20px 0 0 0;
		padding: 0;
    justify-content: center;

    .tag__item {
      display: inline-block;
      background: rgba(83, 83, 83, 0.4);
      border-radius: 3px;
      padding: 2.5px 10px;
      margin: 0 5px 5px 0;
      cursor: default;
      user-select: none;
      transition: background-color 0.3s;

      &:hover {
        background: rgba(83, 83, 83, 0.8);
      }
    }
  }

  &:before {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-image: linear-gradient(-70deg, #424242, transparent 50%);
    opacity: 1;
    border-radius: 10px;
  }

  &:hover .postcard__bar {
    width: 100px;
  }
}

@media screen and (min-width: 769px) {
  .postcard {
    flex-wrap: inherit;

    .postcard__title {
      font-size: 2rem;
    }

    .postcard__tagbox {
      justify-content: start;
    }

    .postcard__img {
      max-width: 300px;
      max-height: 100%;
      transition: transform 0.3s ease;
    }

    .postcard__text {
      padding: 3rem;
      width: 100%;
    }

    .media.postcard__text:before {
      content: "";
      position: absolute;
      display: block;
      background: #18151f;
      top: -20%;
      height: 130%;
      width: 55px;
    }

    &:hover .postcard__img {
      transform: scale(1.1);
    }

    &:nth-child(2n+1) {
      flex-direction: row;
    }

    &:nth-child(2n+0) {
      flex-direction: row-reverse;
    }

    &:nth-child(2n+1) .postcard__text::before {
      left: -12px !important;
      transform: rotate(4deg);
    }

    &:nth-child(2n+0) .postcard__text::before {
      right: -12px !important;
      transform: rotate(-4deg);
    }
  }
}
@media screen and (min-width: 1024px){
		.postcard__text {
      padding: 2rem 3.5rem;
    }
		
		.postcard__text:before {
      content: "";
      position: absolute;
      display: block;
      
      top: -20%;
      height: 130%;
      width: 55px;
    }
	
  .postcard.dark {
		.postcard__text:before {
			background: #18151f;
		}
  }
	.postcard.light {
		.postcard__text:before {
			background: #e1e5ea;
		}
  }
}

/* COLORS */
.postcard .postcard__tagbox .green.play:hover {
	background: $main-green;
	color: black;
}
.green .postcard__title:hover {
	color: $main-green;
}
.green .postcard__bar {
	background-color: $main-green;
}
.green::before {
	background-image: linear-gradient(
		-30deg,
		$main-green-rgb-015,
		transparent 50%
	);
}
.green:nth-child(2n)::before {
	background-image: linear-gradient(30deg, $main-green-rgb-015, transparent 50%);
}

.postcard .postcard__tagbox .blue.play:hover {
	background: $main-blue;
}
.blue .postcard__title:hover {
	color: $main-blue;
}
.blue .postcard__bar {
	background-color: $main-blue;
}
.blue::before {
	background-image: linear-gradient(-30deg, $main-blue-rgb-015, transparent 50%);
}
.blue:nth-child(2n)::before {
	background-image: linear-gradient(30deg, $main-blue-rgb-015, transparent 50%);
}

.postcard .postcard__tagbox .red.play:hover {
	background: $main-red;
}
.red .postcard__title:hover {
	color: $main-red;
}
.red .postcard__bar {
	background-color: $main-red;
}
.red::before {
	background-image: linear-gradient(-30deg, $main-red-rgb-015, transparent 50%);
}
.red:nth-child(2n)::before {
	background-image: linear-gradient(30deg, $main-red-rgb-015, transparent 50%);
}

.postcard .postcard__tagbox .yellow.play:hover {
	background: $main-yellow;
	color: black;
}
.yellow .postcard__title:hover {
	color: $main-yellow;
}
.yellow .postcard__bar {
	background-color: $main-yellow;
}
.yellow::before {
	background-image: linear-gradient(
		-30deg,
		$main-yellow-rgb-015,
		transparent 50%
	);
}
.yellow:nth-child(2n)::before {
	background-image: linear-gradient(
		30deg,
		$main-yellow-rgb-015,
		transparent 50%
	);
}

@media screen and (min-width: 769px) {
	.green::before {
		background-image: linear-gradient(
			-80deg,
			$main-green-rgb-015,
			transparent 50%
		);
	}
	.green:nth-child(2n)::before {
		background-image: linear-gradient(
			80deg,
			$main-green-rgb-015,
			transparent 50%
		);
	}

	.blue::before {
		background-image: linear-gradient(
			-80deg,
			$main-blue-rgb-015,
			transparent 50%
		);
	}
	.blue:nth-child(2n)::before {
		background-image: linear-gradient(80deg, $main-blue-rgb-015, transparent 50%);
	}

	.red::before {
		background-image: linear-gradient(-80deg, $main-red-rgb-015, transparent 50%);
	}
	.red:nth-child(2n)::before {
		background-image: linear-gradient(80deg, $main-red-rgb-015, transparent 50%);
	}
	
	.yellow::before {
		background-image: linear-gradient(
			-80deg,
			$main-yellow-rgb-015,
			transparent 50%
		);
	}
	.yellow:nth-child(2n)::before {
		background-image: linear-gradient(
			80deg,
			$main-yellow-rgb-015,
			transparent 50%
		);
	}
}



  </style>
   <link rel="icon" type="image/x-icon" href="favicon.ico">
</head>
<body style="background-color: #6E13C8;">
    <jsp:include page="menu_login.jsp" />

    <div class="container mt-4">
        <h1 class="text-center" style="color: orange">Sobre Nós</h1>
        <br>
        <br>
        <p style="color: orange; font-size: larger; font-family: serif">O MUBRAIN é um site que tem como objetivo fornecer um espaço para os usuários compartilharem e descobrirem novas músicas e álbuns. Ele permite que os usuários pesquisem e adicionem suas músicas e álbuns favoritos, bem como deixem suas opiniões e comentários sobre eles. O site oferece várias categorias musicais, como rock, pop, jazz, eletrônica, música clássica, entre outras, para ajudar os usuários a encontrar músicas de acordo com seus gostos pessoais. O MUBRAIN também oferece uma plataforma de interação entre os usuários, permitindo que eles sigam uns aos outros e compartilhem suas listas de reprodução e álbuns favoritos. Além disso, os usuários podem avaliar as músicas e álbuns de outros usuários e deixar comentários para ajudar a comunidade a descobrir novas músicas e álbuns. Em resumo, o MUBRAIN é uma comunidade online de música que oferece aos usuários um lugar para descobrir e compartilhar músicas e álbuns, bem como expressar suas opiniões e comentários sobre eles. Ele oferece uma plataforma de interação para os usuários se conectarem e compartilharem suas paixões musicais.</p>
    </div>
    
    <br>
    <br>
    <br>
    <br>
     <div class="container mt-4">
        <h1 class="text-center" style="color: orange">Personalidades mais influentes de nós, os criadores!</h1>
     </div>
    <section class="dark" style="background-color: transparent;">
	<div class="container py-4">
		
            

		<article class="postcard dark blue" style="background-color: rgba(0, 0, 0, 0.5);">
			<a class="postcard__img_link" href="#">
				<img class="postcard__img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Tony-Iommi_2009-06-11_Chicago_photoby_Adam-Bielawski.jpg/640px-Tony-Iommi_2009-06-11_Chicago_photoby_Adam-Bielawski.jpg" alt="Image Title" />
			</a>
			<div class="postcard__text">
				<h1 class="postcard__title"><a href="#">Tony Iommi</a></h1>
				<div class="postcard__subtitle small">
					<time datetime="2020-05-25 12:00:00">
						<i class="fas fa-calendar-alt mr-2"></i>19 de fevereiro de 1948 
					</time>
				</div>
				<div class="postcard__bar"></div>
				<div class="postcard__preview-txt">Tony Iommi é um renomado guitarrista britânico, amplamente conhecido como o fundador e membro principal da lendária banda de heavy metal Black Sabbath. Nascido em 19 de fevereiro de 1948, em Birmingham, Inglaterra, Iommi teve um papel fundamental na definição do som do heavy metal e influenciou gerações de músicos ao longo de sua carreira.
					<li class="tag__item"><i class="fas fa-tag mr-2"></i>Ex-Black Sabbath</li>
					<li class="tag__item"><i class="fas fa-clock mr-2"></i>Ex- Heaven and Hell</li>
					<li class="tag__item play blue">
						<a href="#"><i class="fas fa-play mr-2"></i>Solo</a>
					</li>
				</ul>
			</div>
		</article>
		<article class="postcard dark red" style="background-color: rgba(0, 0, 0, 0.5); ">
			<a class="postcard__img_link" href="#">
				<img class="postcard__img" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Lemmy-02.jpg/250px-Lemmy-02.jpg" alt="Image Title" />	
			</a>
			<div class="postcard__text">
				<h1 class="postcard__title red"><a href="#">Ian Fraser "Lemmy" Kilmister</a></h1>
				<div class="postcard__subtitle small">
					<time datetime="2020-05-25 12:00:00">
						<i class="fas fa-calendar-alt mr-2"></i> 24 de dezembro de 1945
					</time>
				</div>
				<div class="postcard__bar"></div>
				<div class="postcard__preview-txt">Lemmy Kilmister foi um lendário músico britânico, conhecido principalmente como o líder da banda de rock Motörhead. Nascido como Ian Fraser Kilmister em 24 de dezembro de 1945 em Stoke-on-Trent, Inglaterra, Lemmy se tornou uma figura emblemática no mundo do rock 'n' roll.

Lemmy ganhou destaque como baixista e vocalista do Motörhead, uma das bandas mais influentes do gênero. Sua abordagem única para tocar baixo, combinada com sua voz áspera e poderosa, contribuiu para o som distintivo e pesado da banda.
					<li class="tag__item"><i class="fas fa-tag mr-2"></i>Motorhead</li>
                                </li>
				</ul>
			</div>
		</article>
		<article class="postcard dark green" style="background-color: rgba(0, 0, 0, 0.5);">
			<a class="postcard__img_link" href="#">
				<img class="postcard__img" src="https://fudeus.files.wordpress.com/2007/01/jb-brasil.jpg?w=380" alt="Image Title" />
			</a>
			<div class="postcard__text">
				<h1 class="postcard__title green"><a href="#">James Joseph Brown Jr.</a></h1>
				<div class="postcard__subtitle small">
					<time datetime="2020-05-25 12:00:00">
						<i class="fas fa-calendar-alt mr-2">3 de maio de 1933</i>
					</time>
				</div>
				<div class="postcard__bar"></div>
				<div class="postcard__preview-txt"> James Brown foi um lendário cantor, compositor e dançarino norte-americano, conhecido como "O Padrinho do Soul". Nascido em 3 de maio de 1933, na Carolina do Sul, Brown foi uma figura seminal na música popular e deixou um legado duradouro.

                                    Com sua poderosa voz e presença de palco magnética, James Brown ajudou a definir o som do soul, funk e R&B. Ele lançou uma série de sucessos, incluindo "Papa's Got a Brand New Bag", "I Got You (I Feel Good)" e "Sex Machine", que se tornaram hinos do gênero e influenciaram gerações de músicos.</div>
				<ul class="postcard__tagbox">
					<li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
					<li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
					<li class="tag__item play green">
						<a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
					</li>
				</ul>
			</div>
		</article>
		<article class="postcard dark yellow" style="background-color: rgba(0, 0, 0, 0.5);">
			<a class="postcard__img_link" href="#">
				<img class="postcard__img" src="https://lastfm.freetls.fastly.net/i/u/ar0/0632aad81c174d829f85b7091d09aef2.jpg" alt="Image Title" />
			</a>
			<div class="postcard__text">
				<h1 class="postcard__title yellow"><a href="#">William "Dan" McCafferty</a></h1>
				<div class="postcard__subtitle small">
					<time datetime="2020-05-25 12:00:00">
						<i class="fas fa-calendar-alt mr-2"></i>14 de outubro de 1946
					</time>
				</div>
				<div class="postcard__bar"></div>
				<div class="postcard__preview-txt">Dan McCafferty é um renomado cantor escocês, conhecido como o vocalista principal da lendária banda de rock Nazareth. Nascido em 14 de outubro de 1946, em Dunfermline, Escócia, McCafferty teve um papel crucial no sucesso e na identidade sonora do Nazareth.

Com sua voz poderosa e distintiva, McCafferty ajudou a definir o som único da banda. Ele era conhecido por seu estilo de canto rasgado e cheio de emoção, que se encaixava perfeitamente nas baladas melódicas e nos rocks pesados do Nazareth. Suas performances intensas e carismáticas no palco cativaram os fãs ao redor do mundo.</div>
				<ul class="postcard__tagbox">
					<li class="tag__item"><i class="fas fa-tag mr-2"></i>Podcast</li>
					<li class="tag__item"><i class="fas fa-clock mr-2"></i>55 mins.</li>
					<li class="tag__item play yellow">
						<a href="#"><i class="fas fa-play mr-2"></i>Play Episode</a>
					</li>
				</ul>
			</div>
		</article>
	</div>
</section>


   
        
        
        
       
      
      

    
</body>
</html>