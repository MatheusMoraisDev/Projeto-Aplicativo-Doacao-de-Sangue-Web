<%-- 
    Document   : buscaFeedback
    Created on : 21/11/2023, 09:56:22
    Author     : Livia

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
    <h1>LISTAR</h1>
        <FORM name="validarListarFeedback" action="validarListarFeedback.jsp" method="post">
            CLASSIFICAÇÃO : <input type="text" name ="CLASSIFICACAO" value=""> <br>
            <input type="submit" name ="ENTRAR" value="ENTRAR">
        </FORM>
    </div>
    </body>
</html>
