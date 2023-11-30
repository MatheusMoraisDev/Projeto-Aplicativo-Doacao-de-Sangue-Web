<%-- 
    Document   : alteraUsuario.jsp
    Created on : 08/04/2021, 20:13:33
    Author     : User
--%>
<%@page import="backenddmm20232.models.beans.PessoaJuridica"%>
<%@page import="backenddmm20232.controllers.ControllerPessoaJuridica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%
    int ID = Integer.parseInt(request.getParameter("ID"));
    PessoaJuridica pjEntrada = new PessoaJuridica(ID);
    ControllerPessoaJuridica contPj = new ControllerPessoaJuridica();
    PessoaJuridica pjSaida = contPj.buscar(pjEntrada);
    
    PessoaJuridica pj = new PessoaJuridica("");
    List<PessoaJuridica> listaSaidaPj = contPj.listar(pj);
%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>ALTERAR</h1>
        <form name="validarAlterarAgendamentos" action="validarAlterarAgendamentos.jsp" method="post">
            HOSPITAIS:
            <select name="SELECTPJ" class="browser-default">
                <% for (PessoaJuridica listaHospitais : listaSaidaPj){ %>
                    <%if(pjSaida.getId() == listaHospitais.getId() ) { %>
                        <option selected value="<%=listaHospitais.getId()%>"><%=listaHospitais.getRazaoSocial()%></option>
                    <% } else { %>
                        <option value="<%=listaHospitais.getId()%>"><%=listaHospitais.getRazaoSocial()%></option>
                    <% } %>
                <% } %>
            </select>
            NOVO ID <input type="text" name="ID" value="<%=pjSaida.getId()%>"> <br>
            NOVA RAZÃO SOCIAL <input type="text" name="RAZAOSOCIAL" value="<%=pjSaida.getRazaoSocial()%>"> <br>
            NOVO NOME FANTASIA <input type="text" name="NOMEFANTASIA" value="<%=pjSaida.getNomeFantasia()%>"> <br>
            NOVO CNPJ <input type="text" name="CNPJ" value="<%=pjSaida.getCnpj()%>"> <br>
            NOVA INSCRIÇÃO ESTADUAL <input type="text" name="INSCRICAOESTADUAL" value="<%=pjSaida.getIe()%>"> <br>
            NOVO ENDEREÇO <input type="text" name="ENDERECO" value="<%=pjSaida.getEndereco()%>"> <br>
            NOVO TELEFONE <input type="text" name="TELEFONE" value="<%=pjSaida.getTelefone()%>"> <br>
            NOVO E-MAIL <input type="text" name="EMAIL" value="<%=pjSaida.getEmail()%>"> <br>
            <input type="hidden" name="ID" value="<%=pjSaida.getId()%>"> <br>
            <input type="submit" name="ALTERAR" value="ALTERAR"> <br>
        </form>
    </div>
    </body>
</html>