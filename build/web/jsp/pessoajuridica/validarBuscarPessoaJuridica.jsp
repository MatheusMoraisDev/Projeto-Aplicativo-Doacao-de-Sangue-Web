<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    PessoaJuridica pjEntrada = new PessoaJuridica(id);
    ControllerPessoaJuridica pjCont = new ControllerPessoaJuridica();
    PessoaJuridica pjSaida = pjCont.buscar(pjEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>BUSCAR</h1> <br>
        <% if (pjSaida != null) { %> 
            Pessoa Jurídica = <%=pjSaida.getId()%> | <%=pjSaida.getRazaoSocial()%> | <%=pjSaida.getNomeFantasia()%> | <%=pjSaida.getCnpj()%> | <%=pjSaida.getCnpj()%> | <%=pjSaida.getIe()%> | <%=pjSaida.getEndereco()%> | <%=pjSaida.getTelefone()%> | <%=pjSaida.getEmail()%>
        <% } else { %> 
            Pessoa Jurídica = Não encontrado
        <% } %> 
         <%session.setAttribute("usuarioAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </div>
    </body>
</html>
