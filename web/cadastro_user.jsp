<%-- 
    Document   : cadastro_user
    Created on : 16/03/2021, 23:04:55
    Author     : mateu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Login</title>
    <script src="jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="styles/cadastro_user_style.css" type="text/css">
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
    <main id="login">
        <form id="form-cadastro" action="#">
            <label for="nome">Nome</label><br>
            <input type="text" id="nome" name="nome"><br>            
            <label for="email">Email</label><br>
            <input type="text" id="email" name="email"><br>
            <label for="senha">Senha</label><br>
            <input type="text" id="senha" name="senha"><br><br>            
            <div id="botoes-cadastro">
                <input id="botao-submit" type="submit" value="Salvar">
                <input id="botao-reset"  type="reset" value="Cancelar">
            </div>
        </form>
    </main>
    <footer id="page-footer">    
        <p>Direitos autorais reservados</p>
    </footer>
    <script>
        $("#botao-submit").click(function(){
            if(document.getElementById("nome").value == "" || document.getElementById("email").value == "" || document.getElementById("senha").value == ""){
                alert("O campo nome e/ou o campo email e/ou o campo senha está vazio.");
                return false;
            }
        })
    </script>
</body>
</html>
