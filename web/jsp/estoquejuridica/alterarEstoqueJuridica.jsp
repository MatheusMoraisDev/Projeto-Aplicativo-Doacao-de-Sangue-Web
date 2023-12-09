<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.EstoqueJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueJuridica" %>
<%@page import="backenddmm20232.models.beans.EstoqueSangue" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue" %>
<%@page import="backenddmm20232.models.beans.PessoaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica" %>
<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    EstoqueJuridica espjEntrada = new EstoqueJuridica(ID);
    ControllerEstoqueJuridica contespj = new ControllerEstoqueJuridica();
    EstoqueJuridica espjSaida = contespj.buscar(espjEntrada);
    
    EstoqueSangue Es = new EstoqueSangue("");
    PessoaJuridica pj = new PessoaJuridica("");
    ControllerEstoqueSangue contEs = new ControllerEstoqueSangue();
    ControllerPessoaJuridica contpj = new ControllerPessoaJuridica();
    List<EstoqueSangue> listaSaidaEs = contEs.listar(Es);
    List<PessoaJuridica> listaSaidaPj = contpj.listar(pj);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarEstoqueJuridica" action="validarAlterarEstoqueJuridica.jsp" method="post">
            ESTOQUE SANGUE:
            <select name="SELECTES" class="browser-default">
                <% for (EstoqueSangue listaEs : listaSaidaEs){ %>
                    <%if(espjSaida.getIdes() == listaEs.getId() ) { %>
                        <option selected value="<%=listaEs.getId()%>"><%=listaEs.getTs()%></option>
                    <% } else { %>
                        <option value="<%=listaEs.getId()%>"><%=listaEs.getTs()%></option>
                    <% } %>
                <% } %>
            </select>
            HOSPITAL:
            <select name="SELECTPJ" class="browser-default">
                <% for (PessoaJuridica listapj : listaSaidaPj){ %>
                    <%if(espjSaida.getIdpj() == listapj.getId() ) { %>
                        <option selected value="<%=listapj.getId()%>"><%=listapj.getRazaoSocial()%></option>
                    <% } else { %>
                        <option value="<%=listapj.getId()%>"><%=listapj.getRazaoSocial()%></option>
                    <% } %>
                <% } %>
            </select>
            RAZÃO SOCIAL <input type="text" name="RAZAOSOCIAL" value="<%=espjSaida.getRazaoSocial()%>"> <br>
            TIPO SANGUINEO <input type="text" name="TIPOSANGUINEO" value="<%=espjSaida.getTipoSanguineo()%>"> <br>
            <input type="hidden" name="ID" value="<%=espjSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
            <%session.setAttribute("estoqueAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </div>
    </body>
    
</html>