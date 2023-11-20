<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page import="backenddmm20232.controllers.ControllerTransactionDonation"%>
<%@page import="backenddmm20232.controllers.ControllerTransactionDonation"%>
<%@page import="backenddmm20232.models.beans.TransactionDonation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>

<%
    int idDoador = Integer.parseInt(request.getParameter("SELECTDOADOR"));
    int idHospital = Integer.parseInt(request.getParameter("SELECTHOSPITAL"));
    int qtd = Integer.parseInt(request.getParameter("QTD"));
    String data = request.getParameter("DATA");
    String teste = request.getParameter("TESTE");
    
    TransactionDonation tdEntrada = new TransactionDonation(idDoador, idHospital, qtd, data, teste);
    ControllerTransactionDonation contTd = new ControllerTransactionDonation();
    TransactionDonation tdSaida = contTd.inserir(tdEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=tdSaida.getId()%> <br>
        IDDOADOR = <%=tdSaida.getIdDoador()%> <br>
        IDHOSPITAL = <%=tdSaida.getIdHospital()%> <br>
        QTD = <%=tdSaida.getQtd()%> <br>
        DATA = <%=tdSaida.getData()%> <br>
        TESTE = <%=tdSaida.getTeste()%> <br>
    </div>
    </body>
</html>
