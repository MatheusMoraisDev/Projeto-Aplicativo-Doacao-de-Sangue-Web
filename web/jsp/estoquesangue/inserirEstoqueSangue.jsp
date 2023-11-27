<%-- 
    Document   : alteraTransacoesSangue.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.EstoqueSangue" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue" %>

<%
    PessoaJuridica pj = new PessoaJuridica("");
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    List<PessoaJuridica> listaSaidaPj = contPj.listar(pj);
%>
    
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirEstoqueSangue" action="validarInserirEstoqueSangue.jsp" method="post">
        DOADOR:
        <select name="SELECTPJ" class="browser-default">
        <% for (PessoaJuridica listaHospitais : listaSaidaPj){ %>
                <option value="<%=listaHospitais.getId()%>"><%=listaHospitais.getRazaoSocial()%></option>
        <% } %>
        </select>
        QUANTIDADE <input type="text" name="QUANTIDADE" value=""> <br>
        TIPO SANGUÍNEO <input type="text" name="TIPO SANGUINEO" value=""> <br>
        DATA DE VALIDADE <input type="text" name="DATA DE VALIDADE" value=""> <br>
        <input type="submit" name ="ENTRAR" value="ENTRAR">
        </form>
    </div>
    </body>
</html>