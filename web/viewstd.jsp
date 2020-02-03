

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
    <tr>
        <th>rollno</th>
        <th>name</th><th>branch</th><th>fees</th>
    </tr>
    <%
         Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
            Statement st = con.createStatement();
            ResultSet res= st.executeQuery("select * from std_detail");
            while(res.next())
            {
                %>
                <tr>
                    <td><%=res.getString(1)%></td>
                    <td><%=res.getString(2)%></td>
                    <td><%=res.getString(3)%></td>
                    <td><%=res.getString(4)%></td>
                </tr>
                <td><a href="edit.jsp?q=<%=res.getString(1)%>">Edit</a></td>
                <%
            }
            %>
        </table>
    </body>
</html>
