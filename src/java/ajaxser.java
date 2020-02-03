
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ajaxser extends HttpServlet {
    
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
       try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajax","root","");
            Statement st = con.createStatement();
            int x= st.executeUpdate("INSERT INTO `student`(rollno,name,fees,branch) values ('"+request.getParameter("rollno")+"','"+request.getParameter("name")+"','"+request.getParameter("fees")+"','"+request.getParameter("branch")+"')");
            if(x!=0)
                response.sendRedirect("ajax.jsp?q=insert success");
            else
                response.sendRedirect("ajax.jsp?q=insert failed");
        }
        catch(Exception ex)
        {
            
        }
       finally
       {
           try{
               PrintWriter out=response.getWriter();
               String data= request.getParameter("q");
               Class.forName("com.mysql.jdbc.Driver");
           
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajax","root","");
            Statement st = con.createStatement();
            ResultSet res= st.executeQuery("select * from `student` where rollno='"+data+"'   ");
             if(res.next())
              out.print("roll no is already exist");
           }
           catch(Exception ex)
           {
               
           }
       }
    }

  
    }


