

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="StdServ" method="post">
            <input type="text" name="txtroll" placeholder="inter roll no"/>
            <input type="text" name="txtname" placeholder="inter roll name"/>
            <input type="text" name="txtbranch" placeholder="inter roll branch"/>
            <input type="number" name="txtfees" placeholder="inter roll fees"/>
            <input type="submit" name="btnsubmit" value="ok"/>
            
            
        </form>
        <a href="viewstd.jsp">View</a>
        <%
            if(request.getParameter("q")!=null)
                out.print(request.getParameter("q"));
            %>
    </body>
</html>
