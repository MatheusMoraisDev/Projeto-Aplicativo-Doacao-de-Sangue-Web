<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.EstoqueSangue" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue" %>

<%
        String tipoSanguineo = request.getParameter("TIPOSANGUINEO");
        EstoqueSangue EsEntrada = new EstoqueSangue(tipoSanguineo);
        ControllerEstoqueSangue EsCont = new ControllerEstoqueSangue();
        List<EstoqueSangue> listaEs = EsCont.listar(EsEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaEs.isEmpty())) { %>
            <% for (EstoqueSangue EsSaida : listaEs) { %>
                ID = <%=EsSaida.getId()%> | HOSPITAL = <%=EsSaida.getIdBanco()%> | QUANTIDADE = <%=EsSaida.getQtd()%> | TIPO SANGUÍNEO = <%=EsSaida.getTs()%> | DATA DE VALIDADE = <%=EsSaida.getDv()%> - <a href="../estoquesangue/alterarEstoqueSangue.jsp?ID=<%=EsSaida.getId()%>">Alterar</a> - <a href="../estoquesangue/validarExcluirEstoqueSangue.jsp?ID=<%=EsSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
       <%session.setAttribute("usuarioAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </body>
</html>
