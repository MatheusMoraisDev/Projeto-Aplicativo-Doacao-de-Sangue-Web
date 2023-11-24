<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.TransactionDonation" %>
<%@page import="backenddmm20232.controllers.ControllerTransactionDonation" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    TransactionDonation tdEntrada = new TransactionDonation(id);
    ControllerTransactionDonation tdCont = new ControllerTransactionDonation();
    TransactionDonation tdSaida = tdCont.excluir(tdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR EXCLUSÃO</h1>
        ID = <%=tdSaida.getId()%> <br>
        QUANTIDADE = <%=tdSaida.getQtd()%> <br>
        DATA = <%=tdSaida.getData()%> <br>
    </div>
    </body>
</html>
