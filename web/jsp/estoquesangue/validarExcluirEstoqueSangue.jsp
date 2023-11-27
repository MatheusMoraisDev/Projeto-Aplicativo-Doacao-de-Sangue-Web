<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.EstoqueSangue" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    EstoqueSangue EsEntrada = new EstoqueSangue(id);
    ControllerEstoqueSangue EsCont = new ControllerEstoqueSangue();
    EstoqueSangue EsSaida = EsCont.excluir(EsEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR EXCLUSÃO</h1>
        ID = <%=EsSaida.getId()%> <br>
        ID HOSPITAL = <%=EsSaida.getIdBanco()%><br>
        QUANTIDADE = <%=EsSaida.getQtd()%> <br>
        TIPO SANGUÍNEO = <%=EsSaida.getTs()%> <br>
        DATA DE VALIDADE = <%=EsSaida.getDv()%> <br>
    </div>
    </body>
</html>
