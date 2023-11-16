<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.UsuariosSistemas" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosSistemas" %>

<%
    String obs = request.getParameter("OBS");
    UsuariosSistemas usEntrada = new UsuariosSistemas(obs);
    ControllerUsuariosSistemas contUS = new ControllerUsuariosSistemas();
    List<UsuariosSistemas> listaUS = contUS.listar(usEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaUS.isEmpty())) { %>
            <% for (UsuariosSistemas us : listaUS){ %>
            USU-SIST = ID = <%=us.getId()%> | LOGIN = <%=us.getUsu().getLogin()%> | SISTEMA = <%=us.getSis().getNome()%> | OBS = <%=us.getObs()%>- <a href="../ususist/alteraUsuSist.jsp?ID=<%=us.getId()%>">Altera</a> - <a href="../ususist/validaExcluiUsuSist.jsp?ID=<%=us.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
