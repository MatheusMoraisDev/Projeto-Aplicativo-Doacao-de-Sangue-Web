<%-- 
    Document   : validaExcluirFeedback
    Created on : 21/11/2023, 10:30:03
    Author     : Livia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Feedback" %>
<%@page import="backenddmm20232.controllers.ControllerFeedback" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    Feedback fEntrada = new Feedback(id);
    ControllerFeedback fCont = new ControllerFeedback();
    Feedback fSaida = fCont.excluir(fEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=fSaida.getId()%> <br>
        USUÁRIO = <%=fSaida.getIdUsuario()%> <br>
        CLASSIFICAÇÃO = <%=fSaida.getClassificacao()%> <br>
        COMENTÁRIO = <%=fSaida.getComentario()%> <br>
        DATA = <%=fSaida.getData()%> <br>
    </div>
    </body>
</html>
