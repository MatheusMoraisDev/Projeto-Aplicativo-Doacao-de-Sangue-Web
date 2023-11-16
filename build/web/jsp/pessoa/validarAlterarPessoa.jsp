<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String nome = request.getParameter("NOME");
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
    PessoaFisica pEntrada = new PessoaFisica(id,nome,rg,cpf);
    ControllerPessoaFisica pesCont = new ControllerPessoaFisica();
    PessoaFisica pSaida = pesCont.alterar(pEntrada);
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
