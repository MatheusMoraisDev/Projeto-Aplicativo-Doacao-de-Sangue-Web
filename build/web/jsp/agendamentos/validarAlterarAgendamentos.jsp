<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.ScheduledDonation" %>
<%@page import="backenddmm20232.controllers.ControllerScheduledDonation" %>
<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idDoador = Integer.parseInt(request.getParameter("SELECTDOADOR"));
    String data = request.getParameter("DATA");
    String status = request.getParameter("STATUS");
    
    ScheduledDonation sdEntrada = new ScheduledDonation(id, idDoador, data, status);
    ControllerScheduledDonation contTd = new ControllerScheduledDonation();
    ScheduledDonation sdSaida = contTd.alterar(sdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=sdSaida.getId()%> <br>
        ID DOADOR = <%=sdSaida.getIdDoador()%><br>
        DATA = <%=sdSaida.getData()%> <br>
        STATUS = <%=sdSaida.getStatus()%> <br>
    </div>
    </body>
</html>