<%-- 
    Document   : cadastro_venda
    Created on : 16/03/2021, 23:08:16
    Author     : mateu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Login</title>
    <script src="jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="styles/cadastro_venda_style.css" type="text/css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
</head>
<body>
    <nav>
        <img id="logo" src="images/logo.png" alt="Logo preto e branco, um carrinho com um rosto em cima">
        <div id="botoes-gerenciamento">
            <div id="botao-cadastros">
                <p>Cadastros</p>
                <ul>
                    <li><a href="cadastro_produto.jsp">Produto</a></li>
                    <li><a href="cadastro_venda.jsp">Venda</a></li>
                </ul>
            </div>            
            <div id="botao-consultas">
                <p>Consultas</p>            
                <ul>
                    <li><a href="consulta_produto.jsp">Produto</a></li>
                </ul>
            </div>
        </div>
        <a id="login-link" href="login.jsp">Login</a>
    </nav>
    <main id="cadastro_venda">
        <form id="form-cadastro_venda">
            <div id="venda_prazo">            
                <input type="checkbox" id="fname" name="prazo">            
                <label for="prazo">Venda a prazo?</label>            
            </div><br>
            <label for="descricao">Digite parte da descrição do produto</label><br>
            <div id="descricao_produto">                
                <input type="text" id="descricao" name="descricao">
                <button id="botao-pesquisar_produto">Pesquisar</button>
            </div><br>      
            <div id="box-tabela_produtos">
                <table id="tabela-produtos">
                    <tr>
                        <th>Código</th>
                        <th>Descrição</th>
                        <th>R$ (Unitário)</th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>bla</td>
                        <td>10,80</td>
                        <td>Adicionar</td>
                    </tr>
                </table>
            </div><br>
            <p>Seu carrinho:</p>
            <div id="box-tabela_itens">
                <table id="tabela-itens_carrinho">     
                    <tbody>

                    </tbody>
                </table>
            </div><br>
            <p>Total pedido:</p><br>                       
            <div id="botoes-cadastro_venda">
                <input id="botao-submit" type="submit" value="Finalizar Pedido">
                <input id="botao-reset"  type="reset" value="Cancelar">
            </div>
        </form>
    </main>
    <footer id="page-footer">    
        <p>Direitos autorais reservados</p>
    </footer>
    <script>
        $('#botao-pesquisar_produto').click(function(){
            if(document.getElementById("descricao") == ""){
                alert("A descrição está vazia.");
                return false;
            }
        })
        $('#botao-submit').click(function(){
            if(document.getElementById("tabela-itens_carrinho").children[0].children.length == 0 ){
                alert("O carrinho está vazio.");
                return false;
            }
        })
        $('#botao-reset').click(function(){
            if(document.getElementById("tabela-itens_carrinho").children.length > 0 ){
                var itens = document.getElementById("tabela-itens_carrinho").children[0].childNodes;
                for(var i = 0; i < itens.length; i++){
                    itens[i].remove();
                }
            }
        })
    </script>
</body>
</html>
