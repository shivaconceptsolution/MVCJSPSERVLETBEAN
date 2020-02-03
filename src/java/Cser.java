/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo
 */
@WebServlet(urlPatterns = {"/Cser"})
public class Cser extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
try (PrintWriter out = response.getWriter()) 
        {
            if(request.getParameter("chk")!=null)
            {
                
            Cookie c1= new Cookie("uname", request.getParameter("uname"));
            Cookie c2= new Cookie("upass", request.getParameter("upass"));
            c1.setMaxAge(10000);
            c2.setMaxAge(10000);
            response.addCookie(c1);
            response.addCookie(c2);
            }
    }

    }}
    

    
