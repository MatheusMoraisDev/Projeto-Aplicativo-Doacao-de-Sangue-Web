<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.EstoqueJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueJuridica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int ides = Integer.parseInt(request.getParameter("SELECTES"));
    int idpj= Integer.parseInt(request.getParameter("SELECTPJ"));
    String razaoSocial = request.getParameter("RAZAOSOCIAL");
    String tipoSanguineo = request.getParameter("TIPOSANGUINEO");
    
    EstoqueJuridica espjEnt = new EstoqueJuridica(id, ides, idpj, razaoSocial, tipoSanguineo);
    ControllerEstoqueJuridica contespj = new ControllerEstoqueJuridica();
    EstoqueJuridica espjSaida = contespj.alterar(espjEnt);

%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=espjSaida.getId()%> <br
        IDES = <%=espjSaida.getIdes()%> <br>
        IDPJ = <%=espjSaida.getIdpj()%> <br>
        HOSPITAL = <%=espjSaida.getRazaoSocial()%> <br>
        TIPO SANGUINEO = <%=espjSaida.getTipoSanguineo()%> <br>
    </div>
    <%session.setAttribute("EstoqueAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </body>
</html>
