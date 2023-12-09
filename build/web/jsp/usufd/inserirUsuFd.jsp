<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.UsuariosFeedback" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosFeedback" %>
<%@page import="backenddmm20232.models.beans.Feedback" %>
<%@page import="backenddmm20232.controllers.ControllerFeedback" %>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>
<%
    Usuario usu = new Usuario("");
    Feedback Fd = new Feedback("");
    ControllerUsuario contUsu = new ControllerUsuario();
    ControllerFeedback contFd = new ControllerFeedback();
    List<Usuario> listaSaidaUsu = contUsu.listar(usu);
    List<Feedback> listaSaidaFd = contFd.listar(Fd);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirUsuFd" action="validarInserirUsuFd.jsp" method="post">
            USUARIO:
            <select name="SELECTUSU" class="browser-default">
                <% for (Usuario listaUsu : listaSaidaUsu){ %>
                        <option value="<%=listaUsu.getId()%>"><%=listaUsu.getLogin()%>></option>
                <% } %>
            </select>
            FEEDBACK
            <select name="SELECTFD" class="browser-default">
                <% for (Feedback listaFd : listaSaidaFd){ %>
                        <option value="<%=listaFd.getId()%>"><%=listaFd.getId()%></option>
                <% } %>
            </select>
            TIPO <input type="text" name="TIPO" value=""> <br>
            STATUS <input type="text" name="STATUS" value=""> <br>
            CLASSIFICAÇÃO <input type="text" name="CLASSIFICACAO" value=""> <br>
            COMENTÁRIOS <input type="text" name="COMENTARIO" value=""> <br>
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