<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica" %>
<%
    int id = Integer.parseInt(request.getParameter("SELECTPJ"));
    String razaoSocial = request.getParameter("RAZAOSOCIAL");
    String nomeFantasia = request.getParameter("NOMEFANTASIA");
    String cnpj = request.getParameter("CNPJ");
    String inscricaoEstadual = request.getParameter("INSCRICAOESTADUAL");
    String endereco = request.getParameter("ENDERECO");
    String telefone = request.getParameter("TELEFONE");
    String email = request.getParameter("EMAIL");
    
    PessoaJuridica pjEntrada = new PessoaJuridica(id, razaoSocial, nomeFantasia, cnpj, inscricaoEstadual, endereco, telefone, email);
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    PessoaJuridica pjSaida = contPj.alterar(pjEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=pjSaida.getId()%> <br>
        RAZÃO SOCIAL = <%=pjSaida.getRazaoSocial()%><br>
        NOME FANTASIA = <%=pjSaida.getNomeFantasia()%> <br>
        CNPJ = <%=pjSaida.getCnpj()%> <br>
        INSCRIÇÃO ESTADUAL = <%=pjSaida.getIe()%> <br>
        ENDEREÇO = <%=pjSaida.getEndereco()%> <br>
        TELEFONE = <%=pjSaida.getTelefone()%> <br>
        E-MAIL = <%=pjSaida.getEmail()%> <br>
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