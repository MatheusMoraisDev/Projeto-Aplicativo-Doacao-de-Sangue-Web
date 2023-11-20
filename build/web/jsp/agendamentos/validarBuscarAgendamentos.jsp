<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.ScheduledDonation" %>
<%@page import="backenddmm20232.controllers.ControllerScheduledDonation" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    ScheduledDonation sdEntrada = new ScheduledDonation(id);
    ControllerScheduledDonation sdCont = new ControllerScheduledDonation();
    ScheduledDonation sdSaida = sdCont.buscar(sdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCAR</h1> <br>
        <% if (sdSaida != null) { %> 
            Agendamentos = <%=sdSaida.getId()%> | <%=sdSaida.getIdDoador()%> | <%=sdSaida.getData()%> | <%=sdSaida.getStatus()%>
        <% } else { %> 
            Agendamentos = Não encontrado
        <% } %> 
    </div>
    </body>
</html>
