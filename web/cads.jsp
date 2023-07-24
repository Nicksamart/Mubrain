<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<style>
    * {
        box-sizing: border-box;
    }
    body {
        font-family:sans-serif;
        margin: 0;
        padding: 3rem;
        background-color: #6E13C8;


    }
    .general-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, 17rem);
        gap: 2rem;
    }
    .card {
        position: relative;
        height: 24rem;
        background-color: #6E13C8;
        overflow-y: hidden;
        box-shadow: 0.1rem 0.1rem 1rem rgba(0, 0, 0, 0.1);
        border-radius: .25rem;
    }
    .card .title {
        margin: 0;
        display: block;
        background-color: #6E13C8;
        padding: .70rem;
        transform: translate3d(0, -100%, 0);
        transition: transform 300ms;
        border-radius:.25rem .25rem 0 0;
    }
    .title h3{
        margin:0;
        font-size:1rem;
    }
    .title p{
        margin:0;
        font-size:.80rem;
    }
    .card a {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
    }
    .card a:hover ~ .card-overlay, .card a:focus ~ .card-overlay {
        transform: translate3d(0, 0, 0);
    }
    .card a:hover ~ .card-overlay .title, .card a:focus ~ .card-overlay .title {
        transform: translate3d(0, 0, 0);
    }
    .card a:hover ~ .card-overlay .card-body, .card a:focus ~ .card-overlay .card-body {
        opacity: 1;
    }
    img {
        width: 100%;
        height: 100%;
        display: block;
        object-fit: cover;
    }
    .card-overlay {
        display: flex;
        flex-direction: column;
        justify-content: center;
        height: 100%;
        position: absolute;
        width: 100%;
        top: 0;
        transition: transform 300ms;
        background-color:#C1C1C1;
        transform: translate3d(0, 100%, 0);
    }
    .card-body {
        flex-grow: 1;
        padding: 1rem;
        opacity: 0;
        transition: opacity 500ms 100ms;
    }
    .card-body p {
        margin: 0;
        text-align: justify;
    }


</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Geologica&display=swap" rel="stylesheet">


<h2 style="text-align:center; font-size: 80px; font-family: 'Geologica', sans-serif; background: linear-gradient(to bottom, #CB91F2, #8A2BE2); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">Descubra-se! conheça o melhor de cada artista.</h2>

<br>
<br>
<br>
<div class="general-container">
    <div class="card">
        <a href="https://www.bobmarley.com/" target="_blank"></a>
        <img src='images/Bob-Marley.jpg' alt='Bob'>
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Bob Marley</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Bob Marley (1945-1981) foi um cantor, compositor e guitarrista jamaicano, responsável por tornar o reggae conhecido mundialmente. Foi também um dos maiores representantes do movimento religioso Rastafári. As principais músicas são: Is This Love?; I Shot de Sheriff; No Woman, No Cry; Could You Be Loved; Redemption Song.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.whitneyhouston.com/" target="_blank"></a>
        <img src='images/whitneyhouston.jpg' alt='Houston' style="width: auto; height: 110%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Whitney Houston</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z"/>
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Whitney Houston (1963-2012) foi uma premiada cantora, compositora, atriz, produtora, supermodelo e empresária norte-americana. É considerada como a melhor cantora de todos os tempos. Seus poderosos vocais e seu extremo talento artístico na composição de letras e melodias, fizeram-na ser conhecida como Rainha da Balada.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.arethafranklin.net/" target="_blank"></a>
        <img src='images/ArethaFranklin.jpg' alt='Aretha Franklin' style="width: auto; height: 110%;" >
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Aretha Franklin</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z"/>
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p >Aretha Franklin (1942-2018) foi uma cantora e compositora estadunidense de gospel, R&B e soul que se tornou ícone da música negra. Entre os anos 60, 70 e 80 gravou álbuns que fizeram história, como I Never Loved a Man the Way I Love You, Lady Soul, Young, Gifted and Black, Sparkle, o gospel Amazing Grace e entre outros.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.jimihendrix.com/" target="_blank"></a>
        <img src='images/jimi-hendrix.jpg' alt='jimi-hendrix' style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Jimi Hendrix</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z"/>
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>James Marshall "Jimi" Hendrix (1942-1970) foi um guitarrista, cantor e compositor norte-americano. Em praticamente todas as listas já publicadas de melhores guitarristas da história, ocupa o primeiro lugar,e é um dos mais influentes músicos de sua era, em diversos gêneros musicais</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.davidbowie.com/" target="_blank"></a>
        <img src='images/DavidBowie.jpg' alt='David Bowie' style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">David Bowie</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z"/>
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>David Bowie (1947-2016) foi um cantor, compositor e produtor inglês. Durante anos esteve na linha de frente do pop e rock. Recebeu o apelido de camaleão pelas mudanças de estilo musical e por encarnar personagens temáticos em alguns de seus álbuns. Entre seus sucessos estão: "Space Oddity”, "Life on Mars", "Heroes" e "Ziggy Stardust.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.johnnycash.com/" target="_blank"></a>
        <img src='https://i.pinimg.com/564x/1a/16/fc/1a16fc481c4ca0c73031f2952058d58d.jpg' alt=''>
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Johnny Cash</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>John R. Cash foi um cantor, compositor, escritor, diretor e ator estadunidense, conhecido por seus fãs como "O Homem de Preto". É considerado um dos músicos mais influentes do século XX, e também considerado o "rei da música country" e um ícone desse gênero.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.youtube.com/channel/UCF_ZemMVw8G6Kko3IeNtDCw" target="_blank"></a>
        <img src='images/Raul_Seixas.tif' alt='Raul_Seixas'>
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Raul Seixas</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Raul Seixas (1945-1989) foi um cantor, compositor, guitarrista e produtor brasileiro, um dos mais importantes nomes do rock no Brasil. Entre suas músicas destacam-se: Maluco Beleza, Eu Nasci Há 10 Mil Anos Atrás, Mosca na Sopa e Ouro de Tolo.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.youtube.com/channel/UC5OrDvL9DscpcAstz7JnQGA" target="_blank"></a>
        <img src='images/Michael_Jackson.jpg' alt='Michael Jackson'>
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Michael Jackson</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Michael Jackson (1958-2009) foi um cantor, compositor e dançarino estadunidense. Apelidado de "Rei do Pop", foi um dos ícones culturais mais importantes e influentes de todos os tempos e um dos maiores artistas da história da música</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.youtube.com/channel/UC5OrDvL9DscpcAstz7JnQGA" target="_blank"></a>
        <img src='images/kurt.jpg' alt='Kurt'style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Kurt Cobain</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Kurt Cobain (1967-1994) foi um cantor, compositor e músico norte-americano. Foi o fundador, vocalista e guitarrista da banda Nirvana. Destaques para seu primeiro single Love Buzz, o disco Bleach, mas foi com álbum "Nevermind", que ele conquistou o título de maior astro do rock.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="http://www.elisregina.com.br/Por-Elis/Albuns/" target="_blank"></a>
        <img src='images/elis_regina.jpg' alt='Elis Regina'style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Elis Regina</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Elis Regina (1945-1982) foi uma cantora brasileira, considerada por muitos como a melhor cantora brasileira de todos os tempos. Sua morte precoce a transformou em mito. Diversas canções foram eternizadas na sua voz, entre elas: Águas de Março, Casa no Campo e Como Nossos Pais.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.amywinehouse.com/" target="_blank"></a>
        <img src='images/amywinehouse.jpg' alt='Amy'style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Amy Winehouse</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Amy Jade Winehouse foi uma cantora e compositora de destaque da música britânica que faleceu aos 27 anos vítima do uso abusivo de drogas. Com um talento notável e um repertório que mesclava jazz, soul, reggae e ska, sua relevância musical foi grande.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.youtube.com/watch?v=8Xe8gApDRgU" target="_blank"></a>
        <img src='images/Rossi.jpg' alt='Rossi'style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Reginaldo Rossi</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music" >
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Reginaldo Rossi, nome artístico de Reginaldo Rodrigues dos Santos (1943-2013), foi um cantor e compositor brasileiro, conhecido como o "Rei do Brega". Iniciou sua carreira em 1964 no grupo The Silver Jets. Sua 1ª gravação foi "O Pão", nome do seu primeiro disco.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://zecapagodinho.com.br/pt/" target="_blank"></a>
        <img src='images/ZECA.jpg' alt='Zeca'style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Zeca Pagodinho</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music" >
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg>Singer</p>
            </div>
            <div class="card-body">
                <p>Zeca Pagodinho (1959) é um cantor e compositor brasileiro, um dos grandes destaques do gênero samba e pagode. Seus maiores sucessos são: Judia de Mim, Vai Vadiar, Deixa a Vida me Levar e Deixa Clarear</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="http://www.freddiemercury.com" target="_blank"></a>
        <img src='images/fred.jpg' alt='Fred'style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Freddie Mercury</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music" >
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>um dos maiores cantores de rock de todos os tempos, tendo várias músicas famosas, como We Are the Champions, We Will Rock You, Crazy Little Thing, Bohemian Rhapsody, entre outras. </p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="http://www.freddiemercury.com/" target="_blank"></a>
        <img src='images/joao.jpg' alt='João'style="width: auto; height: 80%;">
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">João Gilberto</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music" >
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>João Gilberto (1931-2019) foi um cantor, compositor e violonista brasileiro, considerado o criador da Bossa Nova, o novo movimento da música popular brasileira que surgiu no fim dos anos 50.</p>
            </div>
        </div>
    </div>
    <div class="card">
        <a href="https://www.pavarottiofficial.com/" target="_blank"></a>
        <img src='images/pavarotti.jpg' alt=''>
        <div class="card-overlay">
            <div class="title">
                <h3 style="color: orange">Pavarotti</h3>
                <p><svg viewBox="0 0 512 512" width="15" title="music">
                    <path d="M470.38 1.51L150.41 96A32 32 0 0 0 128 126.51v261.41A139 139 0 0 0 96 384c-53 0-96 28.66-96 64s43 64 96 64 96-28.66 96-64V214.32l256-75v184.61a138.4 138.4 0 0 0-32-3.93c-53 0-96 28.66-96 64s43 64 96 64 96-28.65 96-64V32a32 32 0 0 0-41.62-30.49z" />
                    </svg> Singer</p>
            </div>
            <div class="card-body">
                <p>Luciano Pavarotti foi um cantor italiano, grande intérprete das obras de Bellini, Donizetti, Verdi e Puccini, dentre outros em seu grande repertório. É reconhecido como o tenor que popularizou mundialmente a ópera. Pavarotti começou sua carreira profissional como tenor lírico em 1961 na Itália.</p>
            </div>
        </div>
    </div>
</div>


