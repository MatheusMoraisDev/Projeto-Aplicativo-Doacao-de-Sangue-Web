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
        <form name="validarInserirUsuario" action="validarInserirUsuario.jsp" method="post">
            LOGIN <input type="text" name="LOGIN" value=""> <br>
            SENHA <input type="text" name="SENHA" value=""> <br>
            STATUS <input type="text" name="STATUS" value=""> <br>
            TIPO <input type="text" name="TIPO" value=""> <br>
            <input type="submit" name="INSERIR" value="INSERIR"> <br>
        </form>
    </div>
   </body>
</html>