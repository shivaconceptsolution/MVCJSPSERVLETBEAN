
<%@page import="java.sql.Statement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <script>
            function show(a)
            {
                xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange=function()
                {
                    document.getElementById("res").innerHTML= xmlhttp.responseText;
                    
                };
                xmlhttp.open("post","ajaxsearch.jsp?q="+a,true);
                xmlhttp.send();
            }
        </script>
       
    </head> 
    <body>
        <input type="text" id="name" placeholder="search"  onkeyup="show(this.value)"/>
        <br>
        <br>
        <div id="res" ></div>
        <!-- show data of search !-->
        <%
         

            String data = request.getParameter("q")+ "%";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajax","root","");
            Statement st=con.createStatement();
            ResultSet res = st.executeQuery("select * from `student` where name like '"+data+"' ");
            while(res.next())
            {
                out.print(res.getString(1)+" "+res.getString(2)+" "+res.getString(3)+" "+res.getString(4)+ "<hr> ");
            }
            %>
    </body>
</html>
