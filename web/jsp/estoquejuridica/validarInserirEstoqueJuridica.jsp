<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.EstoqueJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueJuridica" %>

<%
    int ides = Integer.parseInt(request.getParameter("SELECTES"));
    int idpj = Integer.parseInt(request.getParameter("SELECTPJ"));
    String razaoSocial = request.getParameter("RAZAOSOCIAL");
    String tipoSanguineo = request.getParameter("TIPOSANGUINEO");
    
    EstoqueJuridica espjEnt = new EstoqueJuridica(idpj, ides, razaoSocial, tipoSanguineo);
    ControllerEstoqueJuridica contespj = new ControllerEstoqueJuridica();
    EstoqueJuridica espjSaida = contespj.inserir(espjEnt);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=espjSaida.getId()%> <br>
        IDES = <%=espjSaida.getIdes()%> <br>
        IDPJ = <%=espjSaida.getIdpj()%> <br>
        RAZÃO SOCIAL = <%=espjSaida.getRazaoSocial()%> <br>
        TIPO SANGUINEO = <%=espjSaida.getTipoSanguineo()%> <br>
    </div>
    <%session.setAttribute("estoqueAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </body>
</html>
