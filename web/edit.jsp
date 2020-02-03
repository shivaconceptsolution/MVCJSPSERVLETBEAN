
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
            Statement st = con.createStatement();
            ResultSet res = st.executeQuery("select * from std_detail where rollno='"+request.getParameter("q")+" '");
          if(res.next())
{
    %>
    <form action="Update" method="post">
        <input type="text" name="txtroll" value="<%=res.getString(1)%>"/>
        <input type="text" name="txtname" value="<%=res.getString(2)%>"/>
        <input type="text" name="txtbranch" value="<%=res.getString(3)%>"/>
        <input type="text" name="txtfees" value="<%=res.getString(4)%>"/>
        
        
    </form>
        <%
} 
          %>
    </body>
</html>
