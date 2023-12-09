<%-- 
    Document   : validaExcluiUsuario
    Created on : 08/04/2021, 20:34:03
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.EstoqueJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueJuridica" %>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    EstoqueJuridica espjEntrada = new EstoqueJuridica(ID);
    ControllerEstoqueJuridica contespj = new ControllerEstoqueJuridica();
    EstoqueJuridica espjSaida = contespj.excluir(espjEntrada);;
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
          ID = <%=espjSaida.getId()%> <br>
          RAZÃO SOCIAL = <%=espjSaida.getRazaoSocial()%><br>
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
