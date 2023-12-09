<%-- 
    Document   : validaInseriUsuario
    Created on : 08/04/2021, 20:39:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.CampanhaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaJuridica" %>

<%
    int idCd = Integer.parseInt(request.getParameter("SELECTCD"));
    int idPj = Integer.parseInt(request.getParameter("SELECTPJ"));
    String endereco = request.getParameter("ENDERECO");
    String data = request.getParameter("DATA");
    String descricao = request.getParameter("DESCRICAO");
    
    CampanhaJuridica CdpjEnt = new CampanhaJuridica(idPj, idCd, endereco, data, descricao);
    ControllerCampanhaJuridica contCdpj = new ControllerCampanhaJuridica();
    CampanhaJuridica CdpjSaida = contCdpj.inserir(CdpjEnt);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INCLUSÃO CONCLUIDA</h1>
        ID = <%=CdpjSaida.getId()%> <br>
        IDPJ = <%=CdpjSaida.getIdpj()%> <br>
        IDCD = <%=CdpjSaida.getIdcd()%> <br>
        ENDEREÇO = <%=CdpjSaida.getEndereco()%> <br>
        DATAS = <%=CdpjSaida.getData()%> <br>
        DESCRIÇÃO = <%=CdpjSaida.getDescricao()%> <br>
    </div>
    <%session.setAttribute("usuarioAutenticada", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </body>
</html>
