<%-- 
    Document   : inseriCampanhaDoacao
    Created on : 20/11/202, 20:37:49
    Author     : Livia
--%>
<%@page import="java.util.List"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%
    PessoaJuridica Pj = new PessoaJuridica("");
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    List<PessoaJuridica> listaSaidaPj = contPj.listar(Pj);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirCampanhaDoacao" action="validarInserirCampanhaDoacao.jsp" method="post">
            HOSPITAL:
            <select name="SELECTPJ" class="browser-default"> 
             <% for (PessoaJuridica listaPj : listaSaidaPj){ %>
                        <option value="<%=listaPj.getId()%>"><%=listaPj.getRazaoSocial()%></option>
                <% } %>
            </select>
            NOME DA CAMPANHA DE DOAÇÃO <input type="text" name="NOMECAMPANHA" value=""> <br>
            DATA DE INICIO <input type="text" name="DATAINICIO" value=""> <br>
            DATA FINAL <input type="text" name="DATAFIM" value=""> <br>
            DESCRIÇÃO <input type="text" name="DESCRICAO" value=""> <br>
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