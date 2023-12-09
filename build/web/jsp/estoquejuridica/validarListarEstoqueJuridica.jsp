<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="backenddmm20232.models.beans.EstoqueJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueJuridica" %>

<%
    String estoque = request.getParameter("ESTOQUE");
    EstoqueJuridica espjEntrada = new EstoqueJuridica(estoque);
    ControllerEstoqueJuridica contespj = new ControllerEstoqueJuridica();
    List<EstoqueJuridica> listaespj= contespj.listar(espjEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listaespj.isEmpty())) { %>
            <% for (EstoqueJuridica espj : listaespj){ %>
            ESTOQUE - JURIDICA = ID = <%=espj.getId()%> | HOSPITAL = <%=espj.getPj().getRazaoSocial()%> |TIPO SANGUINEO = <%=espj.getEs().getTs()%>- <a href="../estoquejuridica/alterarEstoqueJuridica.jsp?ID=<%=espj.getId()%>">Alterar</a> - <a href="../estoquejuridica/validarExcluirEstoqueJuridica.jsp?ID=<%=espj.getId()%>">Excluir</a> <br>
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
