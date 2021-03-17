<%-- 
    Document   : login
    Created on : 02/03/2021, 10:31:47
    Author     : vilso
--%>

<%@page import="Controller.Usuario"%>
<%@page import="Modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Login</title>
    <script src="jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="styles/login_style.css" type="text/css">
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
        <form id="form-login" action="#">            
            <label for="email">Email</label><br>
            <input type="text" id="email" name="email"><br>
            <label for="senha">Senha</label><br>
            <input type="text" id="senha" name="senha"><br><br>            
            <div id="botoes-login">
                <input id="botao-login" type="submit" value="Login">
                <a id="botao-cadastro" href="cadastro_user.jsp">Cadastrar</a> 
            </div>
        </form>
    </main>
    <footer id="page-footer">    
        <p>Direitos autorais reservados</p>
    </footer>
    <script>
        $("#botao-login").click(function(){
            if(document.getElementById("email").value == "" || document.getElementById("senha").value == "" ){
                alert("O campo email e/ou o campo senha está vazio.");
                return false;
            }
        })
    </script>
</body>
</html>
