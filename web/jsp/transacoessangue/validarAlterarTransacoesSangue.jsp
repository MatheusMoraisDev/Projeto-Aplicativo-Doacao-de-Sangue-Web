<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.TransactionDonation" %>
<%@page import="backenddmm20232.controllers.ControllerTransactionDonation" %>
<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idDoador = Integer.parseInt(request.getParameter("SELECTDOADOR"));
    int idHospital = Integer.parseInt(request.getParameter("SELECTHOSPITAL"));
    int qtd = Integer.parseInt(request.getParameter("QTD"));
    String data = request.getParameter("DATA");
    String teste = request.getParameter("TESTE");
    
    TransactionDonation tdEntrada = new TransactionDonation(id, idDoador, idHospital, qtd, data, teste);
    ControllerTransactionDonation contTd = new ControllerTransactionDonation();
    TransactionDonation tdSaida = contTd.alterar(tdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=tdSaida.getId()%> <br>
        IDDOADOR = <%=tdSaida.getIdDoador()%> <br>
        IDHOSPITAL = <%=tdSaida.getIdHospital()%> <br>
        QTD = <%=tdSaida.getQtd()%> <br>
        DATA = <%=tdSaida.getData()%> <br>
        TESTE = <%=tdSaida.getTeste()%> <br>
    </div>
    </body>
</html>