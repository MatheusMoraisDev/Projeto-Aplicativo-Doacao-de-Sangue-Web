<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    PessoaFisica pEntrada = new PessoaFisica(id);
    ControllerPessoaFisica pesCont = new ControllerPessoaFisica();
    PessoaFisica pSaida = pesCont.excluir(pEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=pSaida.getId()%> <br>
        NOME = <%=pSaida.getNome()%> <br>
        RG = <%=pSaida.getRg()%> <br>
        CPF = <%=pSaida.getCpf()%> <br>
    </div>
    </body>
</html>
