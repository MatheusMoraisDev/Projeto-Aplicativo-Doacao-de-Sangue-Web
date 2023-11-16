<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.PessoaFisica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica" %>

<%
        String nome = request.getParameter("NOME");
        PessoaFisica pEntrada = new PessoaFisica(nome);
        ControllerPessoaFisica pesCont = new ControllerPessoaFisica();
        List<PessoaFisica> listaPes = pesCont.listar(pEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaPes.isEmpty())) { %>
            <% for (PessoaFisica pesSaida : listaPes) { %>
                PESSOA = ID = <%=pesSaida.getId()%> | NOME = <%=pesSaida.getNome()%> | RG = <%=pesSaida.getRg()%> | CPF = <%=pesSaida.getCpf()%> - <a href="../pessoa/alteraPessoa.jsp?ID=<%=pesSaida.getId()%>">Altera</a> - <a href="../pessoa/validaExcluiPessoa.jsp?ID=<%=pesSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
