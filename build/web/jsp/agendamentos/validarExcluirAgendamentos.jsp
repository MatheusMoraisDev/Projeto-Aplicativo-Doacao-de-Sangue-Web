<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.ScheduledDonation" %>
<%@page import="backenddmm20232.controllers.ControllerScheduledDonation" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    ScheduledDonation sdEntrada = new ScheduledDonation(id);
    ControllerScheduledDonation tdCont = new ControllerScheduledDonation();
    ScheduledDonation sdSaida = tdCont.excluir(sdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR EXCLUSÃO</h1>
        ID = <%=sdSaida.getId()%> <br>
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
