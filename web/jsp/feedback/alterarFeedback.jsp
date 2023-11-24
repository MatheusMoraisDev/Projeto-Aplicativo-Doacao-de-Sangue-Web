<%-- 
    Document   : alterarFeedback.jsp
    Created on : 21/11/2023, 21:11:33
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
        <h1>ALTERAR</h1>
        <form name="validarAlterarFeedback" action="validarAlterarFeedback.jsp" method="post">
            ID <%=fSaida.getId()%> <br>
            USUÁRIO <input type="text" name="SELECTUSU" value="<%=fSaida.getIdUsuario()%>"> <br>
            CLASSIFICAÇÃO <input type="text" name="CLASSIFICACAO" value="<%=fSaida.getClassificacao()%>"> <br>
            COMENTÁRIO <input type="text" name="COMENTARIO" value="<%=fSaida.getComentario()%>"> <br>
            DATA <input type="text" name="DATA" value="<%=fSaida.getData()%>"> <br>
            <input type="hidden" name="ID" value="<%=fSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>