<%-- 
    Document   : cookies
    Created on : Jan 29, 2020, 3:53:01 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String uname = " ";
             String upass = " ";
            if(request.getCookies()!=null)
            {
                Cookie c[] = request.getCookies();
                for(int i=0; i<c.length; i++)
                {
                    if(c[i].getName().equals("uname"))
                    {
                        uname=c[i].getValue();
                    }
                    if(c[i].getName().equals("upass"))
                    {
                        upass=c[i].getValue();
                    }
                }
            }
            
            %>
        <form action="Cser" method="post">
            username <input type="text" name="uname" value="<%=uname  %>"/><br>
            password <input type="text" name="upass" value="<%=upass %>"/><br>
            <input type="checkbox" name="chk" checked />rememberme<br>
    <input type="submit" name="login" value="login"/>
        </form>
    </body>
</html>
