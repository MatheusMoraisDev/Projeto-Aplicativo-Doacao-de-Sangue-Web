<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.ScheduledDonation" %>
<%@page import="backenddmm20232.controllers.ControllerScheduledDonation" %>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>
<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    ScheduledDonation sdEntrada = new ScheduledDonation(ID);
    ControllerScheduledDonation contSd = new ControllerScheduledDonation();
    ScheduledDonation sdSaida = contSd.buscar(sdEntrada);
    
    PessoaFisica pf = new PessoaFisica("");
    ControllerPessoaFisica contPf = new ControllerPessoaFisica();
    List<PessoaFisica> listaSaidaPf = contPf.listar(pf);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarAgendamentos" action="validarAlterarAgendamentos.jsp" method="post">
            DOADOR:
            <select name="SELECTDOADOR" class="browser-default">
                <% for (PessoaFisica listaDoadores : listaSaidaPf){ %>
                    <%if(sdSaida.getIdDoador() == listaDoadores.getId() ) { %>
                        <option selected value="<%=listaDoadores.getId()%>"><%=listaDoadores.getNome()%></option>
                    <% } else { %>
                        <option value="<%=listaDoadores.getId()%>"><%=listaDoadores.getNome()%></option>
                    <% } %>
                <% } %>
            </select>
            DATA <input type="text" name="DATA" value="<%=sdSaida.getData()%>"> <br>
            STATUS <input type="text" name="STATUS" value="<%=sdSaida.getStatus()%>"> <br>
            <input type="hidden" name="ID" value="<%=sdSaida.getId()%>"> <br>
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