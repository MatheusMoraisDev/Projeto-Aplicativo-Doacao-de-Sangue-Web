<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.CampanhaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaJuridica" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    CampanhaJuridica CdpjEnt = new CampanhaJuridica(ID);
    ControllerCampanhaJuridica contCdpj = new ControllerCampanhaJuridica();
    CampanhaJuridica CdpjSaida = contCdpj.buscar(CdpjEnt);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCA</h1> <br>
        <% if (CdpjSaida != null) { %> 
        CampanhaJuridica = <%=CdpjSaida.getId()%> | <%=CdpjSaida.getPj().getRazaoSocial()%> | <%=CdpjSaida.getCd().getNomeCampanha()%>| <%=CdpjSaida.getEndereco()%> | <%=CdpjSaida.getData()%> <%=CdpjSaida.getDescricao()%>
        <% } else { %> 
            CampanhaJuridica = Não encontrado
        <% } %> 
    </div>
    </body>
    <%session.setAttribute("campanhaAutenticada", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
</html>
