<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page import="backenddmm20232.controllers.ControllerScheduledDonation"%>
<%@page import="backenddmm20232.controllers.ControllerScheduledDonation"%>
<%@page import="backenddmm20232.models.beans.ScheduledDonation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>

<%
    int idDoador = Integer.parseInt(request.getParameter("SELECTDOADOR"));
    String data = request.getParameter("DATA");
    String status = request.getParameter("STATUS");
    
    ScheduledDonation sdEntrada = new ScheduledDonation(idDoador, data, status);
    ControllerScheduledDonation contSd = new ControllerScheduledDonation();
    ScheduledDonation sdSaida = contSd.inserir(sdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=sdSaida.getId()%> <br>
        ID DOADOR = <%=sdSaida.getIdDoador()%> <br>
        DATA = <%=sdSaida.getData()%> <br>
        STATUS = <%=sdSaida.getStatus()%> <br>
    </div>
    </body>
    <%session.setAttribute("usuarioAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
</html>
