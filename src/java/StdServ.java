
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.StuBean;
import conn.Dbhelper;
/**
 *
 * @author Lenovo
 */
public class StdServ extends HttpServlet 
{
    public void doPost(HttpServletRequest request,HttpServletResponse response)
    {
        StuBean obj = new StuBean();
        
        try{
            Dbhelper.createConnection();
            obj.setRno(request.getParameter("txtroll") );
            obj.setSname(request.getParameter("txtname"));
            obj.setBranch(request.getParameter("txtbranch"));
            obj.setFees(Integer.parseInt(request.getParameter("txtfees")));
          //  int x= st.executeUpdate("insert into std_detail(rollno,name,branch,fees) values ('"+obj.getRno()+"','"+obj.getSname()+"','"+obj.getBranch()+"','"+obj.getFees()+"')");
            
            int x = Dbhelper.dmlOperation("insert into std_detail(rollno,name,branch,fees) values ('"+obj.getRno()+"','"+obj.getSname()+"','"+obj.getBranch()+"','"+obj.getFees()+"')");
            if(x!=0)
                response.sendRedirect("student.jsp?q=insert success");
            else
                response.sendRedirect("student.jsp?q=insert failed");
            
        }
        catch(Exception ex)
        {
            
        }
    }
    }
 