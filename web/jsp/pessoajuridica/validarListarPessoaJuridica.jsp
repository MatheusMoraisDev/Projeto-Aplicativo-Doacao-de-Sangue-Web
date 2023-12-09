<%-- 
    Document   : validaBuscaUsuario
    Created on : 09/04/2021, 10:17:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica" %>

<%
        String nomeFantasia = request.getParameter("NOMEFANTASIA");
        PessoaJuridica pjEntrada = new PessoaJuridica(nomeFantasia);
        ControllerPessoaJuridica pjCont = new ControllerPessoaJuridica();
        List<PessoaJuridica> listapj = pjCont.listar(pjEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>LISTA</h1> <br>
        <% if(!(listapj.isEmpty())) { %>
            <% for (PessoaJuridica pjSaida : listapj) { %>
            ID = <%=pjSaida.getId()%> | CNPJ = <%=pjSaida.getCnpj()%> | EMAIL = <%=pjSaida.getEmail()%> | ENDERECO = <%=pjSaida.getEndereco()%> | IE = <%=pjSaida.getIe()%> | NOME FANTASIA = <%=pjSaida.getNomeFantasia()%> | RAZÃO SOCIAL = <%=pjSaida.getRazaoSocial()%>- <a href="../pessoajuridica/alterarPessoaJuridica.jsp?ID=<%=pjSaida.getId()%>">Alterar</a> - <a href="../pessoajuridica/validarExcluirPessoaJuridica.jsp?ID=<%=pjSaida.getId()%>">Excluir</a> <br>
            <% } %>
       <% } else { %>
            LISTA VAZIA
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
