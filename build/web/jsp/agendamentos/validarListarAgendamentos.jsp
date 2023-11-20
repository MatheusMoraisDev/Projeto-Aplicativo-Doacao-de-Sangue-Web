<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.ScheduledDonation" %>
<%@page import="backenddmm20232.controllers.ControllerScheduledDonation" %>

<%
        String data = request.getParameter("DATA");
        ScheduledDonation sdEntrada = new ScheduledDonation(data);
        ControllerScheduledDonation sdCont = new ControllerScheduledDonation();
        List<ScheduledDonation> listaSd = sdCont.listar(sdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaSd.isEmpty())) { %>
            <% for (ScheduledDonation sdSaida : listaSd) { %>
                ID = <%=sdSaida.getId()%> | DOADOR = <%=sdSaida.getIdDoador()%> | DATA = <%=sdSaida.getData()%> | STATUS = <%=sdSaida.getStatus()%> - <a href="../agendamentos/alterarAgendamentos.jsp?ID=<%=sdSaida.getId()%>">Alterar</a> - <a href="../agendamentos/validarExcluirAgendamentos.jsp?ID=<%=sdSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
