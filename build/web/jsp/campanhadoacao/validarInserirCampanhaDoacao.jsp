<%-- 
    Document   : validaInseriCampanhaDoacao
    Created on : 20/11/2023, 21:27:51
    Author     : Livia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.CampanhaDoacao" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaDoacao" %>

<%
        int idHospital = Integer.parseInt(request.getParameter("SELECTPJ"));
        String nomeCampanha = request.getParameter("NOMECAMPANHA");
        String dataInicio = request.getParameter("DATAINICIO");
        String dataFim = request.getParameter("DATAFIM");
        String descricao = request.getParameter("DESCRICAO");        
        CampanhaDoacao cEntrada = new CampanhaDoacao(idHospital, nomeCampanha, dataInicio, dataFim, descricao);
        ControllerCampanhaDoacao CdCont = new ControllerCampanhaDoacao();
        CampanhaDoacao cSaida = CdCont.inserir(cEntrada);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=cSaida.getId()%> <br>
        HOSPITAL = <%=cSaida.getIdHospital()%> <br>
        NOME DA CAMPANHA DE DOAÇÃO = <%=cSaida.getNomeCampanha()%> <br>
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
