<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.EstoqueJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueJuridica" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    EstoqueJuridica esEntrada = new EstoqueJuridica(ID);
    ControllerEstoqueJuridica contespj = new ControllerEstoqueJuridica();
    EstoqueJuridica espjSaida = contespj.buscar(esEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCA</h1> <br>
        <% if (espjSaida != null) { %> 
            EstoqueJuridica = <%=espjSaida.getId()%> | <%=espjSaida.getIdes()%> | <%=espjSaida.getIdpj()%> | <%=espjSaida.getRazaoSocial()%> | <%=espjSaida.getTipoSanguineo()%>
        <% } else { %> 
            EstoqueJuridica = Não encontrado
        <% } %> 
    </div>
    </body>
    <%session.setAttribute("estoqueAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
</html>
