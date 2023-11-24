<%-- 
    Document   : inserirFeedback
    Created on : 21/11/2023, 09:53:49
    Author     : Livia
--%>

<%@page import="java.util.List"%>
<%@page import="backenddmm20232.controllers.ControllerUsuario"%>
<%@page import="backenddmm20232.models.beans.Usuario"%>
<%
    Usuario usu = new Usuario("");
    ControllerUsuario contusu = new ControllerUsuario();
    List<Usuario> listaSaidausu = contusu.listar(usu);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirFeedback" action="validarInserirFeedback.jsp" method="post">
            USUÁRIO: 
            <select name="SELECTUSU" class="browser-default"> 
             <% for (Usuario listausu : listaSaidausu){ %>
                        <option value="<%=listausu.getId()%>"><%=listausu.getLogin()%></option>
                <% } %>
            </select>
            CLASSIFICAÇÃO <input type="text" name="CLASSIFICACAO" value=""> <br>
            COMENTÁRIO <input type="text" name="COMENTARIO" value=""> <br>
            DATA <input type="text" name="DATA" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
   </body>
</html>