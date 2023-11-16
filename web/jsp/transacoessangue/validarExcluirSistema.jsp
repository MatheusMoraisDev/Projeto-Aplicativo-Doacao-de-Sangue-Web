<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Sistema sEntrada = new Sistema(id);
    ControllerSistema sCont = new ControllerSistema();
    Sistema sSaida = sCont.excluir(sEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=sSaida.getId()%> <br>
        NOME = <%=sSaida.getNome()%> <br>
    </div>
    </body>
</html>
