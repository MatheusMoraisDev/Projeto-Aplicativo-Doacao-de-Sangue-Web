<%-- 
    Document   : validaInseriFeedback
    Created on : 21/11/2023, 10:30:51
    Author     : Livia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Feedback" %>
<%@page import="backenddmm20232.controllers.ControllerFeedback" %>

<%
        int idUsuario = Integer.parseInt(request.getParameter("SELECTUSU"));
        String classificacao = request.getParameter("CLASSIFICACAO");
        String comentario = request.getParameter("COMENTARIO");
        String data = request.getParameter("DATA");
        Feedback fEntrada = new Feedback(idUsuario, classificacao, comentario, data);
        ControllerFeedback FdCont = new ControllerFeedback();
        Feedback fSaida = FdCont.inserir(fEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=fSaida.getId()%> <br>
        USUÁRIO = <%=fSaida.getIdUsuario()%> <br>
        CLASSIFICAÇÃO = <%=fSaida.getClassificacao()%> <br>
        COMENTÁRIO = <%=fSaida.getComentario()%> <br>
        DATA = <%=fSaida.getData()%> <br>
    </div>
    </body>
</html>
