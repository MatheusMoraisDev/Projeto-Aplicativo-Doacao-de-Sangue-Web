<%-- 
    Document   : buscaCampanhaDoacao
    Created on : 20/11/2023, 20:36:22
    Author     : Livia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
    <h1>BUSCAR</h1>
        <FORM name="validarBuscarCampanhaDoacao" action="validarBuscarCampanhaDoacao.jsp" method="post">
            ID : <input type="text" name ="ID" value=""> <br>
            <input type="submit" name ="ENTRAR" value="ENTRAR">
        </FORM>
    </div>
    </body>
</html>
