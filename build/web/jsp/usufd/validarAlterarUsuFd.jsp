<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.UsuariosFeedback" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosFeedback" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idUsu = Integer.parseInt(request.getParameter("SELECTUSU"));
    int idFd = Integer.parseInt(request.getParameter("SELECTFD"));
    String tipo = request.getParameter("TIPO");
    String status = request.getParameter("STATUS");
    String classificacao = request.getParameter("CLASSIFICACAO");
    String comentario = request.getParameter("COMENTARIO");
    
    int ID = Integer.parseInt(request.getParameter("ID"));
    UsuariosFeedback usEntrada = new UsuariosFeedback(ID,idUsu,idFd,tipo,status,classificacao, comentario);
    ControllerUsuariosFeedback contUsuFd = new ControllerUsuariosFeedback();
    UsuariosFeedback usSaida = contUsuFd.alterar(usEntrada);

%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=usSaida.getId()%> <br>
        ID DO USUÁRIO = <%=usSaida.getIdUsu()%> <br>
        ID DO FEEDBACK = <%=usSaida.getIdFd()%> <br>
        TIPO = <%=usSaida.getTipo()%> <br>
        STATUS = <%=usSaida.getStatus()%> <br>
        CLASSIFICAÇÃO = <%=usSaida.getClassificacao()%> <br>
        COMENTÁRIO = <%=usSaida.getComentario()%> <br>
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
