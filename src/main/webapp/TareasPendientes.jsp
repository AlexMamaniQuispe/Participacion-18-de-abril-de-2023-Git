<%@page import="com.emergentes.Tarea"%>
<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("apuntes")==null){
        ArrayList<Tarea> lisaux = new ArrayList<Tarea>();
        session.setAttribute("apuntes", lisaux);
    }
    ArrayList<Tarea> apuntes = (ArrayList<Tarea>)session.getAttribute("apuntes");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <h1 style="text-align:center">GESTOR DE TAREAS</h1>
                    <h3 style="text-align:center"Nombre:> NOMBRE:ALEX INTI MAMANI QUISPE</h3>
        
        <table border="1" style="margin: 0 auto;" class="default" >
            <caption style="text-align:left"><a href="AgregaTarea.jsp">Nuevo</a></caption>
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th>         </th>
            </tr>
            <%
                if(apuntes !=null){
                    for(Tarea t : apuntes){      
            %>
            <tr>
                <td><%=t.getId()%></td>
                <td><%=t.getTarea()%></td>
                <td><input type="checkbox"></td>
                <td><a href="MainServlet?op=editar&id=<%=t.getId()%>">Editar</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%=t.getId()%>">Eliminar</a></td>
                
            </tr>
            <%
                }
                }
            %>
            <caption align=bottom><button><a href="index.jsp">ir al inicio</a></button></caption> 
        </table>

  </script>
            
     </body>
</html>