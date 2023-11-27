<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.EstoqueSangue" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue" %>
<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    EstoqueSangue EsEntrada = new EstoqueSangue(ID);
    ControllerEstoqueSangue contEs = new ControllerEstoqueSangue();
    EstoqueSangue EsSaida = contEs.buscar(EsEntrada);
    
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
        <h1>ALTERAR</h1>
        <form name="validarAlterarEstoqueSangue" action="validarAlterarEstoqueSangue.jsp" method="post">
            HOSPITAL:
            <select name="SELECTPJ" class="browser-default">
                <% for (PessoaJuridica listaHospitais : listaSaidaPj){ %>
                    <%if(EsSaida.getIdBanco() == listaHospitais.getId() ) { %>
                        <option selected value="<%=listaHospitais.getId()%>"><%=listaHospitais.getRazaoSocial()%></option>
                    <% } else { %>
                        <option value="<%=listaHospitais.getId()%>"><%=listaHospitais.getRazaoSocial()%></option>
                    <% } %>
                <% } %>
            </select>
            QUANTIDADE <input type="text" name="QUANTIDADE" value="<%=EsSaida.getQtd()%>"> <br>
            TIPO SANGUÍNEO <input type="text" name="TIPO SANGUINEO" value="<%=EsSaida.getTs()%>"> <br>
            DATA DE VALIDADE <input type="text" name="DATA DE VALIDADE" value="<%=EsSaida.getDv()%>"> <br>
            <input type="hidden" name="ID" value="<%=EsSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>