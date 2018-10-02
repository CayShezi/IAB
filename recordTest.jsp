<%-- 
    Document   : recordTest
    Created on : Feb 2, 2018, 11:51:41 AM
    Author     : shezi
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
 </head>
<body>
 <h1>Selected Checkboxes</h1>
 <table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
  <tr>
   <td>Name</td>   
  </tr>
  <%
   List<String> employees  = (List<String>)request.getAttribute("list");
   for(String e: employees){
  %>
   <tr>
    <td><%=e%></td>
   </tr>
  <% 
   }
  %>
 </table>
</body>
</html>
