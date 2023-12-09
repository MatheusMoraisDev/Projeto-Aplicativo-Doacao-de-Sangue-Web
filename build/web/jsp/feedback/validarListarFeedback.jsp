<%-- 
    Document   : validaListarFeedback
    Created on : 21/11/2023, 10:22:33
    Author     : Livia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.Feedback" %>
<%@page import="backenddmm20232.controllers.ControllerFeedback" %>

<%
        String classificacao = request.getParameter("CLASSIFICACAO");
        Feedback fEntrada = new Feedback(classificacao);
        ControllerFeedback FdCont = new ControllerFeedback();
        List<Feedback> listaFd = FdCont.listar(fEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaFd.isEmpty())) { %>
            <% for (Feedback FdSaida : listaFd) { %>
                FEEDBACK = ID = <%=FdSaida.getId()%> | USUÁRIO = <%=FdSaida.getIdUsuario()%> | CLASSIFICAÇÃO = <%=FdSaida.getClassificacao()%> | COMENTÁRIO = <%=FdSaida.getComentario()%> | DATA = <%=FdSaida.getData()%> - <a href="../feedback/alterarFeedback.jsp?ID=<%=FdSaida.getId()%>">Alterar</a> - <a href="../feedback/validarExcluirFeedback.jsp?ID=<%=FdSaida.getId()%>">Excluir</a> <br>
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
