/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lenovo
 */
public class Update extends HttpServlet {
public void doPost(HttpServletRequest request,HttpServletResponse response)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
            Statement st = con.createStatement();
            int x= st.executeUpdate("update std_detail set name=' "+request.getParameter("txtname")+"',branch='"+request.getParameter("txtbranch")+"',fees='"+request.getParameter("txtfees")+"' where rollno=' "+request.getParameter("txtroll")+" ' ");
            if(x!=0)
                response.sendRedirect("viewstd.jsp");
            else
                response.sendRedirect("viewstd.jsp");
        }
        catch(Exception ex)
        {
            
        }
    }
    }

