<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.EstoqueJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueJuridica" %>
<%@page import="backenddmm20232.models.beans.EstoqueSangue" %>
<%@page import="backenddmm20232.controllers.ControllerEstoqueSangue" %>
<%@page import="backenddmm20232.models.beans.PessoaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica" %>
<%
    EstoqueSangue es = new EstoqueSangue("");
    PessoaJuridica pj = new PessoaJuridica("");
   ControllerEstoqueSangue contes = new ControllerEstoqueSangue();
    ControllerPessoaJuridica contpj = new ControllerPessoaJuridica();
    List<EstoqueSangue> listaSaidaes = contes.listar(es);
    List<PessoaJuridica> listaSaidaPj = contpj.listar(pj);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirEstoqueJuridica" action="validarInserirEstoqueJuridica.jsp" method="post">
            ESTOQUE SANGUE:
            <select name="SELECTES" class="browser-default">
                <% for (EstoqueSangue listaes : listaSaidaes){ %>
                        <option value="<%=listaes.getId()%>"><%=listaes.getId()%></option>
                <% } %>
            </select>
            PESSOA JURIDICA:
            <select name="SELECTPJ" class="browser-default">
                <% for (PessoaJuridica listaPj : listaSaidaPj){ %>
                        <option value="<%=listaPj.getId()%>"><%=listaPj.getRazaoSocial()%></option>
                <% } %>
            </select>
            HOSPITAL <input type="text" name="RAZAOSOCIAL" value=""> <br>
            TIPO SANGUINEO <input type="text" name="TIPOSANGUINEO" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
            <%session.setAttribute("estoqueAutenticado", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </div>
    </body>
</html>