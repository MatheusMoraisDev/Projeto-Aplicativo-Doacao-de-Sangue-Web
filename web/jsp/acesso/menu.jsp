<%-- 
    Document   : menu
    Created on : 09/04/2021, 10:01:00
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmm20232.models.beans.Usuario" %>
<%@page import="backenddmm20232.controllers.ControllerUsuario" %>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario uEntrada = new Usuario(login,senha);
    ControllerUsuario contUsu = new ControllerUsuario();
    boolean valida = contUsu.validar(uEntrada);
%>

<html>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
    <h1>MENU</h1> <br>
    <% if(valida) { %> 
        <h1>Usuario</h1> 
        <a href="../usuario/buscarUsuario.jsp">Buscar</a> 
        | <a href="../usuario/listarUsuario.jsp">listar</a> 
        | <a href="../usuario/inserirUsuario.jsp">Inserir</a>
        <h1>Pessoa</h1> 
        <a href="../pessoa/buscarPessoa.jsp">Buscar</a> 
        | <a href="../pessoa/listarPessoa.jsp">Listar</a> 
        | <a href="../pessoa/inserirPessoa.jsp">Inserir</a>
        <h1>Sistema</h1> 
        <a href="../sistema/buscarSistema.jsp">Buscar</a> 
        | <a href="../sistema/listarSistema.jsp">Listar</a> 
        | <a href="../sistema/inserirSistema.jsp">Inserir</a>
        <h1>Usuario-Sistema</h1> 
        <a href="../ususist/buscarUsuSist.jsp">Buscar</a> 
        | <a href="../ususist/listarUsuSist.jsp">listar</a> 
        | <a href="../ususist/inserirUsuSist.jsp">Inserir</a>
        <h1>Transações de Sangue</h1> 
        <a href="../ususist/buscarUsuSist.jsp">Buscar</a> 
        | <a href="../ususist/listarUsuSist.jsp">listar</a> 
        | <a href="../ususist/inserirUsuSist.jsp">Inserir</a>
        <h1>Agendamentos</h1> 
        <a href="../ususist/buscarUsuSist.jsp">Buscar</a> 
        | <a href="../ususist/listarUsuSist.jsp">listar</a> 
        | <a href="../ususist/inserirUsuSist.jsp">Inserir</a>
        <% } else { %> 
        <h1>Usuário Invalido</h1> 
    <% } %> 
    </div>
   </body>
</html>