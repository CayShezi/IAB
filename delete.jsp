<%-- 
    Document   : delete
    Created on : Feb 5, 2018, 10:50:45 AM
    Author     : shezi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kbcsdatabasev5", "cassius", "cayShez@123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM record WHERE i_d="+id);
 RequestDispatcher disp = request.getRequestDispatcher("/Dashboard.jsp"); 
        disp.forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
