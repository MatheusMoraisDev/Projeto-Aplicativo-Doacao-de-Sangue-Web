<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    PessoaJuridica pjEntrada = new PessoaJuridica(id);
    ControllerPessoaJuridica pjCont = new ControllerPessoaJuridica();
    PessoaJuridica pjSaida = pjCont.excluir(pjEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDAR EXCLUSÃO</h1>
        ID = <%=pjSaida.getId()%> <br>
        RAZÃO SOCIAL = <%=pjSaida.getRazaoSocial()%><br>
        NOME FANTASIA = <%=pjSaida.getNomeFantasia()%> <br>
        CNPJ = <%=pjSaida.getCnpj()%> <br>
        INSCRIÇÃO ESTADUAL = <%=pjSaida.getIe()%> <br>
        ENDEREÇO = <%=pjSaida.getEndereco()%> <br>
        TELEFONE = <%=pjSaida.getTelefone()%> <br>
        E-MAIL = <%=pjSaida.getEmail()%> <br>
    </div>
    </body>
</html>
