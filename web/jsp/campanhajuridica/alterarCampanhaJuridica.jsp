<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="backenddmm20232.controllers.ControllerCampanhaDoacao"%>
<%@page import="backenddmm20232.models.beans.CampanhaDoacao"%>
<%@page import="backenddmm20232.models.beans.CampanhaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaFisica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaFisica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.CampanhaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaJuridica" %>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>
<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    CampanhaJuridica cdEntrada = new CampanhaJuridica(ID);
    ControllerCampanhaJuridica contTd = new ControllerCampanhaJuridica();
    CampanhaJuridica cjSaida = contTd.buscar(cdEntrada);
    
    CampanhaDoacao cd = new CampanhaDoacao("");
    PessoaJuridica pj = new PessoaJuridica("");
    ControllerCampanhaDoacao contCd = new ControllerCampanhaDoacao();
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    List<CampanhaDoacao> listaSaidaCd = contCd.listar(cd);
    List<PessoaJuridica> listaSaidaPj = contPj.listar(pj);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarCampanhaJuridica" action="validarAlterarCampanhaJuridica.jsp" method="post">
            CAMPANHADOACAO:
            <select name="SELECTCD" class="browser-default">
                <% for (CampanhaDoacao listaCd : listaSaidaCd){ %>
                    <%if(cjSaida.getIdcd()== listaCd.getId() ) { %>
                        <option selected value="<%=listaCd.getId()%>"><%=listaCd.getNomeCampanha()%></option>
                    <% } else { %>
                        <option value="<%=listaCd.getId()%>"><%=listaCd.getNomeCampanha()%></option>
                    <% } %>
                <% } %>
            </select>
            HOSPITAL:
            <select name="SELECTPJ" class="browser-default">
                <% for (PessoaJuridica listapj : listaSaidaPj){ %>
                    <%if(cjSaida.getIdpj()== listapj.getId() ) { %>
                        <option selected value="<%=listapj.getId()%>"><%=listapj.getRazaoSocial()%></option>
                    <% } else { %>
                        <option value="<%=listapj.getId()%>"><%=listapj.getRazaoSocial()%></option>
                    <% } %>
                <% } %>
            </select>
            ENDEREÇO <input type="text" name="ENDERECO" value="<%=cjSaida.getEndereco()%>"> <br>
            DATA <input type="text" name="DATA" value="<%=cjSaida.getData()%>"> <br>
            DESCRIÇÃO <input type="text" name="DESCRICAO" value="<%=cjSaida.getDescricao()%>"> <br>
            <input type="hidden" name="ID" value="<%=cjSaida.getId()%>"> <br>
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