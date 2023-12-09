<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.UsuariosFeedback" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosFeedback" %>

<%
    String classificacao = request.getParameter("CLASSIFICACAO");
    UsuariosFeedback usEntrada = new UsuariosFeedback(classificacao);
    ControllerUsuariosFeedback contUsuFd = new ControllerUsuariosFeedback();
    List<UsuariosFeedback> listaUS = contUsuFd.listar(usEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaUS.isEmpty())) { %>
            <% for (UsuariosFeedback us : listaUS){ %>
            FEEDBACK DO USUÁRIO | ID = <%=us.getId()%> | LOGIN = <%=us.getUsu().getLogin()%> | ID FEEDBABK = <%=us.getFd().getId()%> |  TIPO = <%=us.getTipo()%> | STATUS = <%=us.getStatus()%> | CLASSIFICAÇÃO = <%=us.getClassificacao()%>- <a href="../usufd/alterarUsuFd.jsp?ID=<%=us.getId()%>">Alterar</a> - <a href="../usufd/validarExcluirUsuFd.jsp?ID=<%=us.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
    <%session.setAttribute("usuarioAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
</html>
