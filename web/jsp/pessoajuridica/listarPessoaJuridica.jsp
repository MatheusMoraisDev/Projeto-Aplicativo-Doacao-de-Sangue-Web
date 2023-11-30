<%-- 
    Document   : buscaUsuario
    Created on : 09/04/2021, 10:17:22
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
    <h1>LISTAR</h1>
        <FORM name="validarListarPessoaJuridica" action="validarListarPessoaJuridica.jsp" method="post">
            ID <input type="text" name="ID" value="" <br>
            RAZÃO SOCIAL <input type="text" name="RAZAOSOCIAL" value=""> <br>
            NOME FANTASIA <input type="text" name="NOMEFANTASIA" value=""> <br>
            CNPJ <input type="text" name="CNPJ" value=""> <br>
            INSCRIÇÃO ESTADUAL <input type="text" name="INSCRICAOESTADUAL" value=""> <br>
            ENDEREÇO <input type="text" name="ENDERECO" value=""> <br>
            TELEFONE <input type="text" name="TELEFONE" value=""> <br>
            E-MAIL <input type="text" name="EMAIL" value=""> <br>
            <input type="submit" name ="ENTRAR" value="ENTRAR">
        </FORM>
    </div>
    </body>
</html>
