<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    String razaoSocial = request.getParameter("SELECTPJ");
    String nomeFantasia = request.getParameter("NOMEFANTASIA");
    String cnpj = request.getParameter("CNPJ");
    String inscricaoEstadual = request.getParameter("INSCRICAOESTADUAL");
    String endereco = request.getParameter("ENDERECO");
    String telefone = request.getParameter("TELEFONE");
    String email = request.getParameter("EMAIL");
    
    PessoaJuridica pjEntrada = new PessoaJuridica(id, razaoSocial, nomeFantasia, cnpj, inscricaoEstadual, endereco, telefone, email);
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    PessoaJuridica pjSaida = contPj.inserir(pjEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
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
