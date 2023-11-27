<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue"%>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue"%>
<%@page import="backenddmm20232.models.beans.EstoqueSangue"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>

<%
    int idBanco = Integer.parseInt(request.getParameter("SELECTPJ"));
    int quantidade = Integer.parseInt(request.getParameter("QUANTIDADE"));
    String tipoSanguineo = request.getParameter("TIPO SANGUINEO");
    String dataValidade = request.getParameter("DATA DE VALIDADE");
    
    EstoqueSangue EsEntrada = new EstoqueSangue(idBanco, quantidade, tipoSanguineo, dataValidade);
    ControllerEstoqueSangue contEs = new ControllerEstoqueSangue();
    EstoqueSangue EsSaida = contEs.inserir(EsEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=EsSaida.getId()%> <br>
        ID HOSPITAL = <%=EsSaida.getIdBanco()%><br>
        QUANTIDADE = <%=EsSaida.getQtd()%> <br>
        TIPO SANGUÍNEO = <%=EsSaida.getTs()%> <br>
        DATA DE VALIDADE = <%=EsSaida.getDv()%> <br>
    </div>
    </body>
</html>
