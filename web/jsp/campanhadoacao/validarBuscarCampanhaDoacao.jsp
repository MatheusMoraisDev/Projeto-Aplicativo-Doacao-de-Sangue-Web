<%-- 
    Document   : validaBuscaCampanhaDoacao
    Created on : 20/11/2023, 20:56:33
    Author     : Livia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.CampanhaDoacao" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaDoacao" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    CampanhaDoacao cEntrada = new CampanhaDoacao(id);
    ControllerCampanhaDoacao CdCont = new ControllerCampanhaDoacao();
    CampanhaDoacao cSaida = CdCont.buscar(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCA</h1> <br>
        <% if (cSaida != null) { %> 
            CampanhaDoacao = <%=cSaida.getId()%> | <%=cSaida.getIdHospital()%> | <%=cSaida.getNomeCampanha()%> | <%=cSaida.getDataInicio()%> |<%=cSaida.getDataFim()%> |<%=cSaida.getDescricao()%>| %>
        <% } else { %> 
            CampanhaDoacao = Não encontrada
        <% } %> 
    </div>
    </body>
</html>
