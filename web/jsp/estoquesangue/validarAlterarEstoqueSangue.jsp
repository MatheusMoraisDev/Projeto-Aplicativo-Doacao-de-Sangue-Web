<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.EstoqueSangue" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue" %>
<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idBanco = Integer.parseInt(request.getParameter("SELECTPJ"));
    int quantidade = Integer.parseInt(request.getParameter("QUANTIDADE"));
    String tipoSanguineo = request.getParameter("TIPO SANGUINEO");
    String dataValidade = request.getParameter("DATA DE VALIDADE");
    
    EstoqueSangue EsEntrada = new EstoqueSangue(id, idBanco, quantidade, tipoSanguineo, dataValidade);
    ControllerEstoqueSangue contEs = new ControllerEstoqueSangue();
    EstoqueSangue EsSaida = contEs.alterar(EsEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=EsSaida.getId()%> <br>
        ID HOSPITAL = <%=EsSaida.getIdBanco()%><br>
        QUANTIDADE = <%=EsSaida.getQtd()%> <br>
        TIPO SANGUÍNEO = <%=EsSaida.getTs()%> <br>
        DATA DE VALIDADE = <%=EsSaida.getDv()%> <br>
    </div>
    <%session.setAttribute("usuarioAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </body>
</html>