<%-- 
    Document   : cadastro_produto
    Created on : 16/03/2021, 22:50:27
    Author     : mateu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Cadastro de Produto</title>
    <script src="jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="styles/cadastro_produto_style.css" type="text/css">
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
    <main id="cadastro_produto">
        <form id="form_cadastro" action="#">            
            <label for="descricao">Descrição</label><br>
            <input type="text" id="descricao" name="descricao"><br>
            <label for="preco">Preço</label><br>
            <input type="text" id="preco" name="preco"><br><br>
            <label for="qtd_estoque">Quantidade em estoque</label><br>
            <input type="text" id="qtd_estoque" name="qtd_estoque"><br><br>
            <label for="observacao">Observação</label><br>
            <textarea name="observacao"></textarea><br><br>
            <div id="botoes-cadastro_produto">
                <input id="botao-submit" type="submit" value="Salvar">
                <input id="botao-reset"  type="reset" value="Cancelar">
            </div>
        </form>
    </main>
    <footer id="page-footer">    
        <p>Direitos autorais reservados</p>
    </footer>
    <script>
        $('#botao-submit').click(function(){
            if(document.getElementById("descricao").value == "" || 
               (document.getElementById("preco").value == "" || isNaN(document.getElementById("preco").value)) ||
               (document.getElementById("qtd_estoque").value == "" || isNaN(document.getElementById("qtd_estoque").value))){
                   alert("Campos vazios e/ou valores incorretos.");
                   return false;
               }
        })
    </script>
</body>
</html>
