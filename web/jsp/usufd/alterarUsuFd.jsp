<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.UsuariosFeedback" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosFeedback" %>
<%@page import="backenddmm20232.models.beans.Feedback" %>
<%@page import="backenddmm20232.controllers.ControllerFeedback" %>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>
<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    UsuariosFeedback usEntrada = new UsuariosFeedback(ID);
    ControllerUsuariosFeedback contUsuFd = new ControllerUsuariosFeedback();
    UsuariosFeedback usSaida = contUsuFd.buscar(usEntrada);
    
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
            FEEDBACK
            <select name="SELECTFD" class="browser-default">
                <% for (Feedback listaFd : listaSaidaFd){ %>
                    <%if(usSaida.getIdFd() == listaFd.getId() ) { %>
                        <option selected value="<%=listaFd.getId()%>"><%=listaFd.getId()%></option>
                    <% } else { %>
                        <option value="<%=listaFd.getId()%>"><%=listaFd.getClassificacao()%></option>
                    <% } %>
                <% } %>
            </select>
            TIPO <input type="text" name="TIPO" value="<%=usSaida.getTipo()%>"> <br>
            STATUS <input type="text" name="STATUS" value="<%=usSaida.getStatus()%>"> <br>
            CLASSIFICAÇÃO <input type="text" name="OBS" value="<%=usSaida.getClassificacao()%>"> <br>
            COMENTÁRIOS <input type="text" name="OBS" value="<%=usSaida.getComentario()%>"> <br>
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