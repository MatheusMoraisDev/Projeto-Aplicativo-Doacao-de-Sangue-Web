<%-- 
        Document   : validaBuscaFeedback
    Created on : 21/11/2023, 10:29:33
    Author     : Livia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Feedback" %>
<%@page import="backenddmm20232.controllers.ControllerFeedback" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Feedback fEntrada = new Feedback(id);
    ControllerFeedback FdCont = new ControllerFeedback();
    Feedback fSaida = FdCont.buscar(fEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCA</h1> <br>
        <% if (fSaida != null) { %> 
            Feedback = <%=fSaida.getId()%> | <%=fSaida.getIdUsuario()%> | <%=fSaida.getClassificacao()%> | <%=fSaida.getComentario()%> | <%=fSaida.getData()%>
        <% } else { %> 
            fSaida = Não encontrado
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
