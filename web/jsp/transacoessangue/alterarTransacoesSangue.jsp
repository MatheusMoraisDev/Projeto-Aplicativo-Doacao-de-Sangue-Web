<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.TransactionDonation" %>
<%@page import="backenddmm20232.controllers.ControllerTransactionDonation" %>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>
<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    TransactionDonation tdEntrada = new TransactionDonation(ID);
    ControllerTransactionDonation contTd = new ControllerTransactionDonation();
    TransactionDonation tdSaida = contTd.buscar(tdEntrada);
    
    PessoaFisica pf = new PessoaFisica("");
    PessoaJuridica pj = new PessoaJuridica("");
    ControllerPessoaFisica contPf = new ControllerPessoaFisica();
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    List<PessoaFisica> listaSaidaPf = contPf.listar(pf);
    List<PessoaJuridica> listaSaidaPj = contPj.listar(pj);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarTransacoesSangue" action="validarTransacoesSangue.jsp" method="post">
            DOADOR:
            <select name="SELECTDOADOR" class="browser-default">
                <% for (PessoaFisica listaDoadores : listaSaidaPf){ %>
                    <%if(tdSaida.getIdDoador() == listaDoadores.getId() ) { %>
                        <option selected value="<%=listaDoadores.getId()%>"><%=listaDoadores.getNome()%></option>
                    <% } else { %>
                        <option value="<%=listaDoadores.getId()%>"><%=listaDoadores.getNome()%></option>
                    <% } %>
                <% } %>
            </select>
            HOSPITAL:
            <select name="SELECTHOSPITAL" class="browser-default">
                <% for (PessoaJuridica listaHospitais : listaSaidaPj){ %>
                    <%if(tdSaida.getIdHospital() == listaHospitais.getId() ) { %>
                        <option selected value="<%=listaHospitais.getId()%>"><%=listaHospitais.getRazaoSocial()%></option>
                    <% } else { %>
                        <option value="<%=listaHospitais.getId()%>"><%=listaHospitais.getRazaoSocial()%></option>
                    <% } %>
                <% } %>
            </select>
            QUANTIDADE <input type="text" name="QTD" value="<%=tdSaida.getQtd()%>"> <br>
            DATA <input type="text" name="DATA" value="<%=tdSaida.getData()%>"> <br>
            TESTE <input type="text" name="TESTE" value="<%=tdSaida.getTeste()%>"> <br>
            <input type="hidden" name="ID" value="<%=tdSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>