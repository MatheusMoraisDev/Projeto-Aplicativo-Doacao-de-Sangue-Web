<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.CampanhaDoacao" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaDoacao" %>

<%
        String nomeCampanha = request.getParameter("NOMECAMPANHA");
        CampanhaDoacao cEntrada = new CampanhaDoacao(nomeCampanha);
        ControllerCampanhaDoacao CdCont = new ControllerCampanhaDoacao();
        List<CampanhaDoacao> listaCd = CdCont.listar(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaCd.isEmpty())) { %>
            <% for (CampanhaDoacao CdSaida : listaCd) { %>
                CampanhaDoacao = ID = <%=CdSaida.getId()%> | HOSPITAL = <%=CdSaida.getIdHospital()%> | NOME DA CAMPANHA DE DOAÇÃO = <%=CdSaida.getNomeCampanha()%> | DATA DE INICIO = <%=CdSaida.getDataInicio()%>| DATA FINAL = <%=CdSaida.getDataFim()%>| DESCRIÇÃO = <%=CdSaida.getDescricao()%> - <a href="../campanhadoacao/alterarCampanhaDoacao.jsp?ID=<%=CdSaida.getId()%>">Alterar</a> - <a href="../campanhadoacao/validarExcluirCampanhaDoacao.jsp?ID=<%=CdSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
       <% } %>

    </div>
    </body>
</html>
