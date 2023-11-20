<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>

<%
    Usuario usu = new Usuario("");
    ControllerUsuario contUsu = new ControllerUsuario();
    List<Usuario> listaSaidaUsu = contUsu.listar(usu);
%>
    
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarUsuario" action="validarAlterarUsuario.jsp" method="post">
        LOGIN QUE DESEJA ALTERAR:
        <select name="SELECTUSU" class="browser-default">
        <% for (Usuario listaUsu : listaSaidaUsu){ %>
                <option value="<%=listaUsu.getId()%>"><%=listaUsu.getLogin()%></option>
        <% } %>
        </select>
        NOVO LOGIN : <input type="text" name ="LOGIN" value=""> <br> 
        NOVA SENHA : <input type="text" name ="SENHA" value=""> <br>
        NOVO STATUS : <input type="text" name ="STATUS" value=""> <br>
        NOVO TIPO : <input type="text" name ="TIPO" value=""> <br>
            <input type="submit" name ="ENTRAR" value="ENTRAR">
        </form>
    </div>
    </body>
</html>