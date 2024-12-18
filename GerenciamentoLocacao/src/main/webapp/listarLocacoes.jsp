<%--
  Created by IntelliJ IDEA.
  User: Eduardo N. Lacerda
  Date: 20/11/2023
  Time: 03:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/estiloListarLocacao.css" media="screen" />

</head>
<body>

    <header>
        <div class="header">
            <div class="logo-site">
                <div class="container">
                    <img class="logoQuick" src="./img/bigTech1.png">
                    <!-- Modo Dark -->
                </div>
                
            </div>
            <div class="botoes-locacao">
                <button class="button-inicio " onclick="window.location.href='./login.jsp';">Inicio</button>
            </div>
        </div>
          
            
        </div>
    </header>


    <h1>Listagem de Locações</h1>

    <table border="1">
        <tr>
            <th>Id da Locacao</th>
            <th>Nome do Locável</th>
            <th>Data de Início</th>
            <th>Data de Fim</th>
            <th>Usuário</th>
            <th>Status</th>
        </tr>
    
        <c:forEach var="locacao" items="${locacoes}">
        <tr>
            <td>${locacao.id}</td>
            <td>${locacao.nomeQuadra}</td>
            <td>${locacao.dataLocacaoIni}</td>
            <td>${locacao.dataLocacaoFim}</td>
            <td>${locacao.usuario}</td>
            <td>Aguardando pagamento</td>
            <td>
                <form action="/delete-locacao" method="post">
                    <input type="hidden" name="idLocacao" value="${locacao.id}">
                    <button type="submit">Delete</button>
                </form>
                <button type="submit" id="loginBotao" onclick="abrirAlterarDialog()" >Alterar</button>
            </td>


            <dialog id="alterarDialog" class="caixaDialogAlterar">
                <form action = "/alterLocacao" method = "post" >
                    <h4>Escolha Quadra</h4>
                    <select name="quadras" id="quadras" class="inputQuadra">
                        <option>NOTEBOOK LENOVO</option>
                        <option>NOTEBOOK DELL</option>
                        <option>PROJETOR LG</option>
                        <option>PROJETOR MULTILASER</option>
                        <option>PROJETOR EPSON</option>
                    </select>

                    <h4>Escolha a data</h4>
                    
                    <input type="date" name="calendario" class="calendario" />

                    <h3 class="h3">Escolha a Horario: </h3>

                    <select name="horario" id="horario" class="inputTime">
                        <option>10:00</option>
                        <option>12:00</option>
                        <option>14:00</option>
                        <option>16:00</option>
                        <option>18:00</option>
                        <option>20:00</option>
                    </select>
                   
                   
                        <input type="hidden" name="idLocacao" value="${locacao.id}">
                        <button type="button" class="botaoVoltar" onclick="fecharAlterarDialog()">🡨</button>
                        <button type="submit" class="botao">Alterar</button>
                    
                </form>
            </dialog>

        </tr>
    </c:forEach>
    
    </table>
    <script src="JS/Scripts.js"></script>
    </body>
</html>

