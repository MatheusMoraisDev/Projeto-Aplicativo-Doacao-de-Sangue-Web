<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.UsuariosFeedback" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosFeedback" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    UsuariosFeedback usEntrada = new UsuariosFeedback(ID);
    ControllerUsuariosFeedback contUsuFd = new ControllerUsuariosFeedback();
    UsuariosFeedback usSaida = contUsuFd.buscar(usEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCA</h1> <br>
        <% if (usSaida != null) { %> 
            UsuariosFeedback = <%=usSaida.getId()%> || <%=usSaida.getUsu().getLogin()%> | <%=usSaida.getFd().getId()%>| <%=usSaida.getTipo()%> | <%=usSaida.getStatus()%>| <%=usSaida.getClassificacao()%>| <%=usSaida.getComentario()%>
        <% } else { %> 
            UsuariosFeedback = Não encontrado
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
