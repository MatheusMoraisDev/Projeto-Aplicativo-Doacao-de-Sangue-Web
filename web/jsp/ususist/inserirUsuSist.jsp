<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.UsuariosSistemas" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosSistemas" %>
<%@page import="backenddmm20232.models.beans.Sistema" %>
<%@page import="backenddmm20232.controllers.ControllerSistema" %>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>
<%
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
        <h1>INSERIR</h1>
        <form name="validarInserirUsuSist" action="validarInserirUsuSist.jsp" method="post">
            USUARIO:
            <select name="SELECTUSU" class="browser-default">
                <% for (Usuario listaUsu : listaSaidaUsu){ %>
                        <option value="<%=listaUsu.getId()%>"></option>
                <% } %>
            </select>
            SISTEMA:
            <select name="SELECTSIS" class="browser-default">
                <% for (Sistema listaSis : listaSaidaSis){ %>
                        <option value="<%=listaSis.getId()%>"><%=listaSis.getNome()%></option>
                <% } %>
            </select>
            TIPO <input type="text" name="TIPO" value=""> <br>
            STATUS <input type="text" name="STATUS" value=""> <br>
            OBS <input type="text" name="OBS" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
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