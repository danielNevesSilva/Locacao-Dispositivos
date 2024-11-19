<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="CSS/estiloLocacao.css" media="screen" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>

    <!-- Caixa Dialog Reserva -->
    <div id="overlay"></div>

    <dialog id="reservaDialog" class="caixaDialogReserva">
        <form action="/locacao" method="post">
            <h6 class="H6" name="sintetica" id="sintetica">Reserva</h6>


            <select name="quadras" id="quadras" class="inputQuadra">
              <option>NOTEBOOK ACER</option>
              <option>NOTEBOOK DELL</option>
              <option>NOTEBOOK ALIENWARE</option>
              <option>PROJETOR MULTILASER</option>
              <option>PROJETOR EPSON</option>
              <option>MACBOOK PRO</option>

            </select>

                <h4>Data Retirada</h4>
               <input type="date" name="calendario" id="datasCont" class="calendario" >
               <div></div>
                <h4>Data Devolução</h4>
              <input type="date" name="calendarioFim" id="datasCont" class="calendario">
<div></div>
<h4>Horário de retirada </h4>
            <div class="reservaHorario">
            <select name="horario" id="horario" >
                <option>10:00</option>
                <option>12:00</option>
                <option>14:00</option>
                <option>16:00</option>
                <option>18:00</option>
                <option>20:00</option>
            </select>

            </div>
              
            <h5>Valor a pagar <span>R$:</span></h5>
            <div id="imagemQRCode" style="display: none;">
                <h5>
                <img src="./img/QRCode.png" alt="QR Code para pagamento" style="width: 150px; height: 150px; margin-right: 150px; margin-left: 150px;" />
                </h5>
            </div>

            <button type="button" class="botaoVoltar" onclick="fecharReserva()">🡨</button>
            <button type="submit" class="botao">Confirmar</button>
        </form>
    </dialog>



    <header>
        <div class="header">
            <div class="logo-site">
                <div class="container">
                    <img class="logoQuick" src="./img/logoGetQuick.png">
                    <!-- Modo Dark -->
                </div>
               
            </div>
            <div class="botoes-locacao">
                <div>
                    <button  class="botao" onclick="window.location.href='./login.jsp';">Inicio</button>
                    <button class="botaoLocacao" onclick="window.location.href='listar-locacao';"> Minhas Locações</button>
                </div>
                    <div class="botaoDark">
                        <input type="checkbox" class="checkbox" id="btn" />
                        <label class="label" for="btn">
                            <i class="fas fa-moon"></i>
                            <i class="fas fa-sun"></i>
                            <div class="ball"></div>
                        </label>
                    </div>
        </div>
          
            
        </div>
    </header>

    

    <!--IMAGEM QUADRA Sintetica (1)-->
    <main>
        <div class="main-locacao">
            <div class="img-locacao">
                <h1>NOTEBOOK ACER NITRO</h1>
                <img src="./img/NotebookAcerNitro.png ">
                <h2>Configurações</h2>
                <div class="horarios">
                    <h3>Intel Core i5-13420H</h3>
                    <h3>16GB RAM</h3>
                    <h3>RTX 3050</h3>
                    <div class="botao-pai">
                        <button class="botao" onclick="abrirReserva()">Reservar</button>
                    </div>
                </div>
            </div>
        </div>

        <!--IMAGEM QUADRA Basquete (2)-->
        <div class="main-locacao">
            <div class="img-locacao">
                <h1>NOTEBOOK DELL</h1>
                <img src="./img/NotebookDell.png">
                <h2>Configurações</h2>
                <div class="horarios" >
                    <h3>Intel Core i5-10420H</h3>
                                        <h3>8GB RAM</h3>
                                        <h3>RTX 1050</h3>
                    <div class="botao-pai">
                        <button class="botao" onclick="abrirReserva()">Reservar</button>
                    </div>
                </div>
            </div>
        </div>

        <!--IMAGEM QUADRA COBERTA (3)-->
        <div class="main-locacao">
            <div class="img-locacao">
                <h1>NOTEBOOK ALIENWARE</h1>
                <img src="./img/AlienWare.png">
                <h2>Configurações</h2>
                <div class="horarios">
                    <h3>64GB RAM</h3>
                    <h3>Intel Core i9-13420H</h3>
                    <h3>Moniteor 240H</h3>
                    <div class="botao-pai">
                        <button class="botao" onclick="abrirReserva()">Reservar</button>
                    </div>
                </div>
            </div>
        </div>

        <!--IMAGEM QUADRA Tênis (4)-->
        <div class="main-locacao">
            <div class="img-locacao">
                <h1>PROJETOR MULTILASER</h1>
                <img src="./img/ProjetorMultilaser.png">
                <h2>Configurações</h2>
                <div class="horarios">
                    <h3>Mini projetor portatil</h3>
                    <h3>Resolução 1080p</h3>
                    <h3>30 a 50 polegadas</h3>
                    <div class="botao-pai">
                        <button class="botao" onclick="abrirReserva()">Reservar</button>
                    </div>
                </div>
            </div>
        </div>

        <!--IMAGEM QUADRA Visão geral(5)-->
        <div class="main-locacao">
            <div class="img-locacao">
                <h1>PROJETOR EPSON</h1>
                <img src="./img/ProjetorEpson.png">
                <h2>Configurações</h2>
                <div class="horarios">
                    <h3>Projetor Cinema<br></h3>
                    <h3>Resolução 4k</h3>
                    <h3>Smart <br> Audio 8k</h3>
                    <div class="botao-pai">
                        <button class="botao" onclick="abrirReserva()">Reservar</button>
                    </div>
                </div>
            </div>
        </div>

        <!--IMAGEM QUADRA Tênis (6)-->
        <div class="main-locacao">
            <div class="img-locacao">
                <h1>MACBOOK PRO</h1>
                <img src="./img/Macbook-PNG-Pic.png">
                <h2>Configurações</h2>
                <div class="horarios">
                    <h3>M3 PRO 14</h3>
                    <h3>18GB RAM</h3>
                    <h3>APPLE M3</h3>
                    <div class="botao-pai">
                        <button class="botao" onclick="abrirReserva()">Reservar</button>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script src="JS/Scripts.js"></script>
    <script src="JS/ValorLocacao.js"></script>
    <script src="JS/Scriptscalendario.js"></script>
    <script src="https://kit.fontawesome.com/998c60ef77.js" crossorigin="anonymous"></script>
</body>
</html>