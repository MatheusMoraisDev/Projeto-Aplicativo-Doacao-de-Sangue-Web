<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.TransactionDonation" %>
<%@page import="backenddmm20232.controllers.ControllerTransactionDonation" %>

<%
        String data = request.getParameter("DATA");
        TransactionDonation sEntrada = new TransactionDonation(data);
        ControllerTransactionDonation tdCont = new ControllerTransactionDonation();
        List<TransactionDonation> listaTd = tdCont.listar(sEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaTd.isEmpty())) { %>
            <% for (TransactionDonation tdSaida : listaTd) { %>
                ID = <%=tdSaida.getId()%> | DOADOR = <%=tdSaida.getIdDoador()%> | HOSPITAL = <%=tdSaida.getIdHospital()%> | QUANTIDADE = <%=tdSaida.getQtd()%> | DATA = <%=tdSaida.getData()%> | TESTE = <%=tdSaida.getTeste()%> - <a href="../transacoessangue/alterarTransacoesSangue.jsp?ID=<%=tdSaida.getId()%>">Alterar</a> - <a href="../transacoessangue/validarExcluirTransacoesSangue.jsp?ID=<%=tdSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
