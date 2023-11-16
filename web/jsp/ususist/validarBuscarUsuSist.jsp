<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.UsuariosSistemas" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosSistemas" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    UsuariosSistemas usEntrada = new UsuariosSistemas(ID);
    ControllerUsuariosSistemas contUsuSist = new ControllerUsuariosSistemas();
    UsuariosSistemas usSaida = contUsuSist.buscar(usEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCA</h1> <br>
        <% if (usSaida != null) { %> 
            UsuariosSistemas = <%=usSaida.getId()%> | <%=usSaida.getIdUsu()%> | <%=usSaida.getIdSis()%> | <%=usSaida.getUsu().getLogin()%> | <%=usSaida.getSis().getNome()%> | <%=usSaida.getObs()%>
        <% } else { %> 
            UsuariosSistemas = Não encontrado
        <% } %> 
    </div>
    </body>
</html>
