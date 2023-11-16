<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.UsuariosSistemas" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosSistemas" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    UsuariosSistemas usEntrada = new UsuariosSistemas(ID);
    ControllerUsuariosSistemas contUsuSist = new ControllerUsuariosSistemas();
    UsuariosSistemas usSaida = contUsuSist.excluir(usEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
    </div>
    </body>
</html>
