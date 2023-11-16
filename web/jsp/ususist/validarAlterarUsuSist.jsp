<%-- 
    Document   : validaAlteraUsuario.jsp
    Created on : 08/04/2021, 20:26:56
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.UsuariosSistemas" %>
<%@page import="backenddmm20232.controllers.ControllerUsuariosSistemas" %>

<%
    int id = Integer.parseInt(request.getParameter("ID"));
    int idUsu = Integer.parseInt(request.getParameter("SELECTUSU"));
    int idSis = Integer.parseInt(request.getParameter("SELECTSIS"));
    String tipo = request.getParameter("TIPO");
    String status = request.getParameter("STATUS");
    String obs = request.getParameter("OBS");
    
    int ID = Integer.parseInt(request.getParameter("ID"));
    UsuariosSistemas usEntrada = new UsuariosSistemas(ID,idUsu,idSis,tipo,status,obs);
    ControllerUsuariosSistemas contUsuSist = new ControllerUsuariosSistemas();
    UsuariosSistemas usSaida = contUsuSist.alterar(usEntrada);

%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAÇÃO CONCLUIDA</h1>
        ID = <%=usSaida.getId()%> <br>
        IDUSU = <%=usSaida.getIdUsu()%> <br>
        IDSIS = <%=usSaida.getIdSis()%> <br>
        TIPO = <%=usSaida.getTipo()%> <br>
        STATUS = <%=usSaida.getStatus()%> <br>
        OBS = <%=usSaida.getObs()%> <br>
    </div>
    </body>
</html>
