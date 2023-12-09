<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.CampanhaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaJuridica" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idpj = Integer.parseInt(request.getParameter("SELECTPJ"));
    int idcd= Integer.parseInt(request.getParameter("SELECTCD"));
    String endereco = request.getParameter("ENDERECO");
    String data = request.getParameter("DATA");
    String descricao = request.getParameter("DESCRICAO");
    
    CampanhaJuridica CpEntrada = new CampanhaJuridica(id, idpj, idcd, endereco, data, descricao);
    ControllerCampanhaJuridica contCdpj = new ControllerCampanhaJuridica();
    CampanhaJuridica CdpjSaida = contCdpj.alterar(CpEntrada);

%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=CdpjSaida.getId()%> <br>
        IDPJ = <%=CdpjSaida.getIdpj()%> <br>
        IDCD = <%=CdpjSaida.getIdcd()%> <br>
        ENDEREÇO = <%=CdpjSaida.getEndereco()%> <br>
        DATAS = <%=CdpjSaida.getData()%> <br>
        DESCRIÇÃO = <%=CdpjSaida.getDescricao()%> <br>
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
