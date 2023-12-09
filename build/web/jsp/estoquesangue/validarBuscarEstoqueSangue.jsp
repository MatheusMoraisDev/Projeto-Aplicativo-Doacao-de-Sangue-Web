<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.EstoqueSangue" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    EstoqueSangue EsEntrada = new EstoqueSangue(id);
    ControllerEstoqueSangue EsCont = new ControllerEstoqueSangue();
    EstoqueSangue EsSaida = EsCont.buscar(EsEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCAR</h1> <br>
        <% if (EsSaida != null) { %> 
            Estoque Sangue = <%=EsSaida.getId()%> | <%=EsSaida.getIdBanco()%> | <%=EsSaida.getQtd()%> | <%=EsSaida.getTs()%> | <%=EsSaida.getDv()%>
        <% } else { %> 
            Estoque Sangue = Não encontrado
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
