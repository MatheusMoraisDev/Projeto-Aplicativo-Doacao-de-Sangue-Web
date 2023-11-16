<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    PessoaFisica pEntrada = new PessoaFisica(id);
    ControllerPessoaFisica pesCont = new ControllerPessoaFisica();
    PessoaFisica pSaida = pesCont.buscar(pEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCA</h1> <br>
        <% if (pSaida != null) { %> 
            Usuario = <%=pSaida.getId()%> | <%=pSaida.getNome()%> | <%=pSaida.getRg()%> | <%=pSaida.getCpf()%> | %>
        <% } else { %> 
            Usuario = Não encontrado
        <% } %> 
    </div>
    </body>
</html>
