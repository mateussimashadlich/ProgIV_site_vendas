<%-- 
    Document   : consulta_produto
    Created on : 16/03/2021, 23:09:35
    Author     : mateu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Login</title>
    <script src="jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="styles/consulta_produto_style.css" type="text/css">
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
            <label for="descricao">Informe parte do nome do produto</label><br>
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
                        <th>Estoque</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>Feijão</td>
                        <td>10,80</td>
                        <td>100</td>
                        <td>Editar</td>
                        <td>Excluir</td>
                    </tr>
                </table>
            </div>                             
        </form>
    </main>
    <footer id="page-footer">    
        <p>Direitos autorais reservados</p>
    </footer>
    <script>
        $('#botao-pesquisar_produto').click(function(){
            if(document.getElementById("descricao").value == ""){
                alert("O campo de pesquisa está vazio.");
                return false;
            }
        })
    </script>
</body>
</html>
