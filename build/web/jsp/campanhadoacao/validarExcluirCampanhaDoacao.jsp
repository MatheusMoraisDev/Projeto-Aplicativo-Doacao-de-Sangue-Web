<%-- 
    Document   : validaExcluiCampanhaDoacao
    Created on : 2o/11/2023, 21:03:03
    Author     : Livia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.CampanhaDoacao" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaDoacao" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    CampanhaDoacao cEntrada = new CampanhaDoacao(id);
    ControllerCampanhaDoacao CdCont = new ControllerCampanhaDoacao();
    CampanhaDoacao cSaida = CdCont.excluir(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>VALIDA EXCLUSÃO</h1>
        ID = <%=cSaida.getId()%> <br>
        HOSPITAL= <%=cSaida.getIdHospital()%> <br>
        NOME DA CAMPANHA DE DOAÇÃO= <%=cSaida.getNomeCampanha()%> <br>
        DATA DE INICIO = <%=cSaida.getDataInicio()%> <br>
        DATA FINAL = <%=cSaida.getDataFim()%> <br>
        DESCRIÇÃO = <%=cSaida.getDescricao()%> <br>
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
