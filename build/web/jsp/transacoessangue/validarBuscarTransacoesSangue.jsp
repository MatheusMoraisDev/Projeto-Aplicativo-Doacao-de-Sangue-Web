<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.TransactionDonation" %>
<%@page import="backenddmm20232.controllers.ControllerTransactionDonation" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    TransactionDonation tdEntrada = new TransactionDonation(id);
    ControllerTransactionDonation tdCont = new ControllerTransactionDonation();
    TransactionDonation tdSaida = tdCont.buscar(tdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCAR</h1> <br>
        <% if (tdSaida != null) { %> 
            Transação de Sangue = <%=tdSaida.getId()%> | <%=tdSaida.getIdDoador()%> | <%=tdSaida.getIdHospital()%> | <%=tdSaida.getQtd()%> | <%=tdSaida.getData()%> | <%=tdSaida.getTeste()%>
        <% } else { %> 
            Transação de Sangue = Não encontrado
        <% } %> 
    </div>
    </body>
</html>
