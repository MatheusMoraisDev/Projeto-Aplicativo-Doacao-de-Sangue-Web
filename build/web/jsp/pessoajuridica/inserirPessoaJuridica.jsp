<%-- 
    Document   : alteraTransacoesSangue.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    PessoaJuridica pj = new PessoaJuridica("");
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    List<PessoaJuridica> listaSaidaPj = contPj.listar(pj);
%>
    
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirPessoaJuridica" action="validarInserirPessoaJuridica.jsp" method="post">
        </select>
            RAZÃO SOCIAL <input type="text" name="RAZAOSOCIAL" value=""> <br>
            NOME FANTASIA <input type="text" name="NOMEFANTASIA" value=""> <br>
            CNPJ <input type="text" name="CNPJ" value=""> <br>
            INSCRIÇÃO ESTADUAL <input type="text" name="INSCRICAOESTADUAL" value=""> <br>
            ENDEREÇO <input type="text" name="ENDERECO" value=""> <br>
            TELEFONE <input type="text" name="TELEFONE" value=""> <br>
            E-MAIL <input type="text" name="EMAIL" value=""> <br>
        <input type="submit" name ="ENTRAR" value="ENTRAR">
        </form>
    </div>
    </body>
</html>