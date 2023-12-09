<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.CampanhaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaJuridica" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    CampanhaJuridica CdpjEnt = new CampanhaJuridica(ID);
    ControllerCampanhaJuridica contCdpj = new ControllerCampanhaJuridica();
    CampanhaJuridica CdpjSaida = contCdpj.excluir(CdpjEnt);;
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=CdpjSaida.getId()%> <br>
        DATA = <%=CdpjSaida.getData()%> <br>
        DESCRIÇÃO = <%=CdpjSaida.getDescricao()%> <br>
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
