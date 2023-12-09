<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.UsuariosSistemas" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosSistemas" %>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>
<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    UsuariosSistemas usEntrada = new UsuariosSistemas(ID);
    ControllerUsuariosSistemas contUsuSist = new ControllerUsuariosSistemas();
    UsuariosSistemas usSaida = contUsuSist.buscar(usEntrada);
    
    Usuario usu = new Usuario("");
    Sistema sis = new Sistema("");
    ControllerUsuario contUsu = new ControllerUsuario();
    ControllerSistema contSis = new ControllerSistema();
    List<Usuario> listaSaidaUsu = contUsu.listar(usu);
    List<Sistema> listaSaidaSis = contSis.listar(sis);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarUsuSist" action="validarAlterarUsuSist.jsp" method="post">
            USUARIO:
            <select name="SELECTUSU" class="browser-default">
                <% for (Usuario listaUsu : listaSaidaUsu){ %>
                    <%if(usSaida.getIdUsu() == listaUsu.getId() ) { %>
                        <option selected value="<%=listaUsu.getId()%>"><%=listaUsu.getLogin()%></option>
                    <% } else { %>
                        <option value="<%=listaUsu.getId()%>"><%=listaUsu.getLogin()%></option>
                    <% } %>
                <% } %>
            </select>
            SISTEMA:
            <select name="SELECTSIS" class="browser-default">
                <% for (Sistema listaSis : listaSaidaSis){ %>
                    <%if(usSaida.getIdSis() == listaSis.getId() ) { %>
                        <option selected value="<%=listaSis.getId()%>"><%=listaSis.getNome()%></option>
                    <% } else { %>
                        <option value="<%=listaSis.getId()%>"><%=listaSis.getNome()%></option>
                    <% } %>
                <% } %>
            </select>
            TIPO <input type="text" name="TIPO" value="<%=usSaida.getTipo()%>"> <br>
            STATUS <input type="text" name="STATUS" value="<%=usSaida.getStatus()%>"> <br>
            OBS <input type="text" name="OBS" value="<%=usSaida.getObs()%>"> <br>
            <input type="hidden" name="ID" value="<%=usSaida.getId()%>"> <br>
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