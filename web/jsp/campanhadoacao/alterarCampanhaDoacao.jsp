<%-- 
    Document   : alteraCampanhaDoacao.jsp
    Created on : 20/11/2023, 20:13:33
    Author     : Livia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.CampanhaDoacao" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaDoacao" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    CampanhaDoacao cEntrada = new CampanhaDoacao(id);
    ControllerCampanhaDoacao CdCont = new ControllerCampanhaDoacao();
    CampanhaDoacao cSaida = CdCont.buscar(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarCampanhaDoacao" action="validarAlterarCampanhaDoacao.jsp" method="post">
            ID <%=cSaida.getId()%> <br>
            HOSPITAL <input type="text" name="SELECTPJ" value="<%=cSaida.getIdHospital()%>"> <br>
            NOME DA CAMPANHA DE DOAÇÃO <input type="text" name="NOMECAMPANHA" value="<%=cSaida.getNomeCampanha()%>"> <br>
            DATA DE INICIO <input type="text" name="DATAINICIO" value="<%=cSaida.getDataInicio()%>"> <br>
            DATA FINAL<input type="text" name="DATAFIM" value="<%=cSaida.getDataFim()%>"> <br>
            DESCRIÇÃO <input type="text" name="DESCRICAO" value="<%=cSaida.getDescricao()%>"> <br>
            <input type="hidden" name="ID" value="<%=cSaida.getId()%>"> <br>
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