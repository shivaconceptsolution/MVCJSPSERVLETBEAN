<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function checkrno(a)
            {
                var xmlhttp= new XMLHttpRequest();
                xmlhttp.onreadystatechange=function()
                {
                    document.getElementById("urollno").innerHTML=xmlhttp.responseText;
                };
                xmlhttp.open("post","ajaxser?q="+a,true);
                xmlhttp.send();
            }
            </script>
    </head>
    <body>
        <form action="ajaxser"  method="post">
            rollno<input type="text" name="rollno" placeholder="enter rollno" onblur="checkrno(this.value)"/>
        <span id="urollno"></span>
        name<input type="text" name="name" placeholder="enter name"/>
        fees<input type="number" name="fees" placeholder="enter fees"/>
        branch<input type="text" name="branch" placeholder="enter branch"/>
        insertdata<input type="submit" name="ok" />
        </form>
        <%
            if(request.getParameter("q")!=null)
                out.print(request.getParameter("q"));
            %>
    </body>
</html>
