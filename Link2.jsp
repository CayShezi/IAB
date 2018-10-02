<%-- 
    Document   : Link2
    Created on : Apr 13, 2018, 12:21:14 PM
    Author     : shezi
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
    String s =(String)getServletContext().getAttribute("test");
    out.println("value="+ s);
%>
    </body>
</html>
