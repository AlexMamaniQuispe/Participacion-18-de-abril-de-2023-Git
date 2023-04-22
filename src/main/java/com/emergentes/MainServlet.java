/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        String op = request.getParameter("op");
        if(op.equals("eliminar")){
            int pos = -1;
            int buscado=-1;
            int id = Integer.parseInt(request.getParameter("id"));
            //Eliminar el producto
            HttpSession ses = request.getSession();
            
            ArrayList<Tarea> lista = (ArrayList<Tarea>)ses.getAttribute("apuntes");
            
            for(Tarea p : lista){
                pos++;
                if(p.getId() == id ){
                    buscado = pos;
                }
            }
            lista.remove(buscado);
            response.sendRedirect("TareasPendientes.jsp");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        String tarea = request.getParameter("tarea");
        
        Tarea tar = new Tarea();
        
        tar.setId(id);
        tar.setTarea(tarea);
        
        HttpSession ses = request.getSession();
        
        ArrayList<Tarea> lista = (ArrayList<Tarea>)ses.getAttribute("apuntes");
        
        lista.add(tar);
        
        response.sendRedirect("TareasPendientes.jsp");
    }

}