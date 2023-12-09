<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    PessoaFisica pEntrada = new PessoaFisica(id);
    ControllerPessoaFisica pesCont = new ControllerPessoaFisica();
    PessoaFisica pSaida = pesCont.buscar(pEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarPessoa" action="validarAlterarPessoa.jsp" method="post">
            ID <%=pSaida.getId()%> <br>
            NOME <input type="text" name="NOME" value="<%=pSaida.getNome()%>"> <br>
            RG <input type="text" name="RG" value="<%=pSaida.getRg()%>"> <br>
            CPF <input type="text" name="CPF" value="<%=pSaida.getCpf()%>"> <br>
            <input type="hidden" name="ID" value="<%=pSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
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