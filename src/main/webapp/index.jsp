<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align:center">Menú de inicio</h1>
        <link rel="stylesheet" href="estilo.css">
        <button><a href="TareasPendientes.jsp">Gestionar tareas</a></button>
         <%
                  int contador =0;
                
      Cookie[] cukis=request.getCookies();
      if(cukis!=null){
          for(Cookie c:cukis){
              if(c.getName().equals("ALEX")){
                  contador = Integer.parseInt(c.getValue());
              }
          }     
      }
 contador++;
         Cookie c = new Cookie ("ALEX",Integer.toString(contador));
         c.setMaxAge(3600);
         response.addCookie(c);
         response.setContentType("text/html");
         if(contador ==1){
         %>
           <div class="wrapper">
    <div class="content">
      <p>BIENVENIDO A NUESTRO SITIO WEB</p>
      <div class="buttons">
        <button class="item">Aceptar</button>
      </div>
    </div>
  </div>
          <%  
         }else{
         %>
   <div class="wrapper">
    <div class="content">
      <p>GRACIAS POR VISITARNOS NUEVAMENTE</p>
      <div class="buttons">
        <button class="item">Aceptar</button>
      </div>
    </div>
  </div>
 
                      <%
            }
            %>
            
              <script>
     const cookieBox = document.querySelector(".wrapper"), acceptBtn = cookieBox.querySelector("button");
    acceptBtn.onclick = ()=>{
      document.cookie = "Alex=A; max-age="+86400;
      if(document.cookie){
        cookieBox.classList.add("hide");
        
      }else{
        alert("¡No se puede configurar la cookie! Desbloquee este sitio desde la configuración de cookies de su navegador.");
      }
    }
    </script>
    
    
    
    
    </body>
</html>