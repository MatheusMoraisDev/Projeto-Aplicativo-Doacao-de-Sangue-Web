<%-- 
    Document   : alteraTransacoesSangue.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.ScheduledDonation" %>
<%@page import="backenddmm20232.controllers.ControllerScheduledDonation" %>

<%
    PessoaFisica pf = new PessoaFisica("");
    ControllerPessoaFisica contPf = new ControllerPessoaFisica();
    List<PessoaFisica> listaSaidaPf = contPf.listar(pf);
%>
    
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirAgendamentos" action="validarInserirAgendamentos.jsp" method="post">
        DOADOR:
        <select name="SELECTDOADOR" class="browser-default">
        <% for (PessoaFisica listaDoadores : listaSaidaPf){ %>
                <option value="<%=listaDoadores.getId()%>"><%=listaDoadores.getNome()%></option>
        <% } %>
        </select>
        DATA : <input type="text" name ="DATA" value=""> <br>
        STATUS: <input type="text" name ="STATUS" value=""> <br>
        <input type="submit" name ="ENTRAR" value="ENTRAR">
        </form>
    </div>
    </body>
</html>