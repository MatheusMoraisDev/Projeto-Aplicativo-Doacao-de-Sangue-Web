<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>

<%
        String nome = request.getParameter("NOME");
        Sistema sEntrada = new Sistema(nome);
        ControllerSistema sisCont = new ControllerSistema();
        List<Sistema> listaSis = sisCont.listar(sEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaSis.isEmpty())) { %>
            <% for (Sistema sisSaida : listaSis) { %>
                PESSOA = ID = <%=sisSaida.getId()%> | NOME = <%=sisSaida.getNome()%> | SERVIDOR = <%=sisSaida.getServidor()%> | STATIS = <%=sisSaida.getStatus()%> - <a href="../sistema/alteraSistema.jsp?ID=<%=sisSaida.getId()%>">Altera</a> - <a href="../sistema/validaExcluiSistema.jsp?ID=<%=sisSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
