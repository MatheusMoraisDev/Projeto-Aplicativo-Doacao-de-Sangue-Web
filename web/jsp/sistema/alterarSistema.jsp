<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Sistema sEntrada = new Sistema(id);
    ControllerSistema sisCont = new ControllerSistema();
    Sistema sSaida = sisCont.buscar(sEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarSistema" action="validarAlterarSistema.jsp" method="post">
            ID <%=sSaida.getId()%> <br>
            NOME <input type="text" name="NOME" value="<%=sSaida.getNome()%>"> <br>
            SERVIDOR <input type="text" name="SERVIDOR" value="<%=sSaida.getServidor()%>"> <br>
            STATUS <input type="text" name="STATUS" value="<%=sSaida.getStatus()%>"> <br>
            <input type="hidden" name="ID" value="<%=sSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>