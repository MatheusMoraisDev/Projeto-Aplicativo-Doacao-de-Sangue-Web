<%-- 
    Document   : inseriUsuario
    Created on : 08/04/2021, 20:37:49
    Author     : User
--%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/formatacao.inc" %>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
        <h1>INSERIR</h1>
        <form name="validarInserirPessoa" action="validarInserirPessoa.jsp" method="post">
            NOME <input type="text" name="NOME" value=""> <br>
            RG <input type="text" name="RG" value=""> <br>
            CPF <input type="text" name="CPF" value=""> <br>
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