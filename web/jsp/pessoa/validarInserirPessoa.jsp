<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica" %>

<%
        String nome = request.getParameter("NOME");
        String rg = request.getParameter("RG");
        String cpf = request.getParameter("CPF");
        PessoaFisica pEntrada = new PessoaFisica(nome,rg,cpf);
        ControllerPessoaFisica pesCont = new ControllerPessoaFisica();
        PessoaFisica pSaida = pesCont.inserir(pEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=pSaida.getId()%> <br>
        NOME = <%=pSaida.getNome()%> <br>
        RG = <%=pSaida.getRg()%> <br>
        CPF = <%=pSaida.getCpf()%> <br>
    </div>
    </body>
</html>
