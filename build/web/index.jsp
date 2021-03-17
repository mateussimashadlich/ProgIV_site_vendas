<%-- 
    Document   : index
    Created on : 16/03/2021, 23:12:05
    Author     : mateu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>index</title>
    <link rel="stylesheet" href="styles/index_style.css" type="text/css">
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
    <footer id="page-footer">    
        <p>Direitos autorais reservados</p>
    </footer>
    <script>
    </script>
</body>
</html>
