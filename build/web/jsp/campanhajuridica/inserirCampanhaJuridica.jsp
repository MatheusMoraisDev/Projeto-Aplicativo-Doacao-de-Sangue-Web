<%@page import="java.util.List"%>
<%@page import="backenddmm20232.models.beans.CampanhaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaJuridica" %>
<%@page import="backenddmm20232.models.beans.CampanhaDoacao" %>
<%@page import="backenddmm20232.controllers.ControllerCampanhaDoacao" %>
<%@page import="backenddmm20232.models.beans.PessoaJuridica" %>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica" %>
<%
    CampanhaDoacao Cd = new CampanhaDoacao("");
    PessoaJuridica pj = new PessoaJuridica("");
   ControllerCampanhaDoacao contCd = new ControllerCampanhaDoacao();
    ControllerPessoaJuridica contpj = new ControllerPessoaJuridica();
    List<CampanhaDoacao> listaSaidaCd = contCd.listar(Cd);
    List<PessoaJuridica> listaSaidaPj = contpj.listar(pj);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirCampanhaJuridica" action="validarInserirCampanhaJuridica.jsp" method="post">
            CAMPANHADOACAO:
            <select name="SELECTCD" class="browser-default">
                <% for (CampanhaDoacao listaCd : listaSaidaCd){ %>
                        <option value="<%=listaCd.getId()%>"><%=listaCd.getNomeCampanha()%></option>
                <% } %>
            </select>
            PESSOAJURIDICA:
            <select name="SELECTPJ" class="browser-default">
                <% for (PessoaJuridica listaPj : listaSaidaPj){ %>
                        <option value="<%=listaPj.getId()%>"><%=listaPj.getRazaoSocial()%></option>
                <% } %>
            </select>
            ENDEREÇO <input type="text" name="ENDERECO" value=""> <br>
            DATAS <input type="text" name="DATA" value=""> <br>
            DESCRIÇÃO <input type="text" name="DESCRICAO" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
            <%session.setAttribute("usuarioAutenticada", true);%>
            <button onclick="redirecionarParaLogin()">Ir para o Menu</button>
            <script>
                function redirecionarParaLogin() {
                    window.location.href = "../acesso/menu.jsp";
                }
            </script>
    </div>
    </body>
</html>