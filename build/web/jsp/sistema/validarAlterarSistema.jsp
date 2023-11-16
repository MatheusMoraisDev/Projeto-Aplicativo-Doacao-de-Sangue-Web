<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String servidor = request.getParameter("SERVIDOR");
    String status = request.getParameter("STATUS");
    Sistema sEntrada = new Sistema(id,nome,servidor,status);
    ControllerSistema sisCont = new ControllerSistema();
    Sistema sSaida = sisCont.alterar(sEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=sSaida.getId()%> <br>
        NOME = <%=sSaida.getNome()%> <br>
        RG = <%=sSaida.getServidor()%> <br>
        CPF = <%=sSaida.getStatus()%> <br>
    </div>
    </body>
</html>
