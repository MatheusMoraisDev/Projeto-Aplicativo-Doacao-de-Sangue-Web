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
    
    String formattedLogin = login.substring(0, 1).toUpperCase() + login.substring(1).toLowerCase();
%>

<html>
    <head>
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="../../styles/menu.css">
        <link rel="stylesheet" type="text/css" href="../../styles/reset.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
    </head>
    <body>
    <div class="title"> 
        <h1> Seja bem-vindo, <%= formattedLogin %>!</h1>
    </div>
    <div class="container">
      <% 
      Boolean usuarioAutenticado = (Boolean) session.getAttribute("usuarioAutenticado");
      if (valida || usuarioAutenticado != null && usuarioAutenticado ) { 
    %>  
    <div class="menu-collumn"/>
        <h1>Doador</h1> 
            <a href="../pessoa/inserirPessoa.jsp">Inserir</a>
            <a href="../pessoa/buscarPessoa.jsp">Buscar</a> 
            <a href="../pessoa/listarPessoa.jsp">Listar</a> 
    </div>
    
    
    <div class="menu-collumn">       
        <h1>Agendamentos</h1> 
            <a href="../agendamentos/inserirAgendamentos.jsp">Inserir</a>
            <a href="../agendamentos/buscarAgendamentos.jsp">Buscar</a> 
            <a href="../agendamentos/listarAgendamentos.jsp">listar</a> 
    </div>      
            
<!--    <div class="menu-collumn">        
        <h1>Sistema</h1> 
            <a href="../sistema/inserirSistema.jsp">Inserir</a>
            <a href="../sistema/buscarSistema.jsp">Buscar</a> 
            <a href="../sistema/listarSistema.jsp">Listar</a> 
     </div>        -->   
     
     <div class="menu-collumn">        
        <h1>Transações de Sangue</h1> 
            <a href="../transacoessangue/inserirTransacoesSangue.jsp">Inserir</a>
            <a href="../transacoessangue/buscarTransacoesSangue.jsp">Buscar</a> 
            <a href="../transacoessangue/listarTransacoesSangue.jsp">Listar</a> 
     </div>      
    
    <div class="menu-collumn">
        <h1>Estoque de Sangue</h1> 
            <a href="../estoquesangue/inserirEstoqueSangue.jsp">Inserir</a>
            <a href="../estoquesangue/buscarEstoqueSangue.jsp">Buscar</a> 
            <a href="../estoquesangue/listarEstoqueSangue.jsp">Listar</a> 
    </div>  
    
    <div class="menu-collumn">
        <h1>Hospitais</h1> 
            <a href="../pessoajuridica/inserirPessoaJuridica.jsp">Inserir</a>
            <a href="../pessoajuridica/buscarPessoaJuridica.jsp">Buscar</a> 
            <a href="../pessoajuridica/listarPessoaJuridica.jsp">Listar</a> 
    </div>    
    
    <div class="menu-collumn">
        <h1>Estoque Hospitais</h1>
            <a href="../estoquejuridica/inserirEstoqueJuridica.jsp">Inserir</a>
            <a href="../estoquejuridica/buscarEstoqueJuridica.jsp">Buscar</a> 
            <a href="../estoquejuridica/listarEstoqueJuridica.jsp">listar</a> 
    </div>
    
    <div class="menu-collumn">
         <h1>Campanha de Doações</h1>
            <a href="../campanhadoacao/inserirCampanhaDoacao.jsp">Inserir</a>
            <a href="../campanhadoacao/buscarCampanhaDoacao.jsp">Buscar</a> 
            <a href="../campanhadoacao/listarCampanhaDoacao.jsp">listar</a> 
    </div>
    
    <div class="menu-collumn">
        <h1>Feedback</h1>
            <a href="../feedback/inserirFeedback.jsp">Inserir</a>
            <a href="../feedback/buscarFeedback.jsp">Buscar</a> 
            <a href="../feedback/listarFeedback.jsp">listar</a> 
    </div>

    <div class="menu-collumn">
        <h1>Campanha Hospitais</h1>
            <a href="../campanhajuridica/inserirCampanhaJuridica.jsp">Inserir</a>
            <a href="../campanhajuridica/buscarCampanhaJuridica.jsp">Buscar</a> 
            <a href="../campanhajuridica/listarCampanhaJuridica.jsp">listar</a> 
    </div>

        <% } else { %> 
        <h1>Usuário Invalido</h1> 
    <% } %> 
    </div>
   </body>
</html>