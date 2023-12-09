<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.CampanhaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaJuridica" %>

<%
    String descricao = request.getParameter("DESCRICAO");
    CampanhaJuridica CdpjSaida = new CampanhaJuridica(descricao);
    ControllerCampanhaJuridica contCdpj = new ControllerCampanhaJuridica();
    List<CampanhaJuridica> listaCdpj= contCdpj.listar(CdpjSaida);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaCdpj.isEmpty())) { %>
            <% for (CampanhaJuridica cdSaida : listaCdpj) { %>
                ID = <%=cdSaida.getId()%> | ENDERECO = <%=cdSaida.getEndereco()%> | DESCRICAO = <%=cdSaida.getDescricao()%> |DATA = <%=cdSaida.getData()%> - <a href="../campanhajuridica/alterarCampanhaJuridica.jsp?ID=<%=cdSaida.getId()%>">Alterar</a> - <a href="../campanhajuridica/validarExcluirCampanhaJuridica.jsp?ID=<%=cdSaida.getId()%>">Excluir</a> <br>
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