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
<%@page import="backenddmm20232.models.beans.TransactionDonation" %>
<%@page import="backenddmm20232.controllers.ControllerTransactionDonation" %>

<%
    PessoaFisica pf = new PessoaFisica("");
    ControllerPessoaFisica contPf = new ControllerPessoaFisica();
    List<PessoaFisica> listaSaidaPf = contPf.listar(pf);
    
    PessoaJuridica Pj = new PessoaJuridica("");
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    List<PessoaJuridica> listaSaidaPj = contPj.listar(Pj);
    
    TransactionDonation Td = new TransactionDonation("");
    ControllerTransactionDonation contTd = new ControllerTransactionDonation();
    List<TransactionDonation> listaSaidaTd = contTd.listar(Td);
%>
    
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarTransacoesSangue" action="validarAlterarTransacoesSangue.jsp" method="post">
        REGISTRO QUE DESEJA ALTERAR:
        <select name="SELECTREG" class="browser-default">
        <% for (TransactionDonation listaTransaction : listaSaidaTd){ %>
                <option value="<%=listaTransaction.getId()%>"><%=listaTransaction.getId()%></option>
        <% } %>
        </select>
        NOVO DOADOR:
        <select name="SELECTDOADOR" class="browser-default">
        <% for (PessoaFisica listaDoadores : listaSaidaPf){ %>
                <option value="<%=listaDoadores.getId()%>"><%=listaDoadores.getNome()%></option>
        <% } %>
        </select>
        NOVO HOSPITAL:
        <select name="SELECTHOSPITAL" class="browser-default">
        <% for (PessoaJuridica listaHospitais : listaSaidaPj){ %>
                <option value="<%=listaHospitais.getId()%>"><%=listaHospitais.getRazaoSocial()%></option>
        <% } %>
        </select>
        NOVA QUANTIDADE: <input type="text" name ="QTD" value=""> <br> 
        NOVA DATA : <input type="text" name ="DATA" value=""> <br>
        NOVO TESTE: <input type="text" name ="TESTE" value=""> <br>
        <input type="submit" name ="ENTRAR" value="ENTRAR">
        </form>
    </div>
    </body>
</html>