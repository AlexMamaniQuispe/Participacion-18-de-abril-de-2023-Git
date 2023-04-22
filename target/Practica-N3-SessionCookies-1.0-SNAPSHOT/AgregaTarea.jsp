<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center" >Agregar tarea</h1>
        <%--Envio de Formulario--%>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id" value="0"></td>
                </tr>
                <tr>
                    <td>Tarea:</td>
                    <td><input type="text" name="tarea" value=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Agregar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>