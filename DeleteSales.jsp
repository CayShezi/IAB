
<%@page import="za.ac.kbcs.dao.SourcesDao"%>
<%-- 
    Document   : delete
    Created on : Feb 5, 2018, 10:50:45 AM
    Author     : shezi
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");

SourcesDao dao = new SourcesDao();
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kbcsdatabasev5", "cassius", "cayShez@123");
Statement st=conn.createStatement();


dao.AddSalesArchive(id);
int i=st.executeUpdate("DELETE FROM salesmanagement WHERE salesID="+id);
 RequestDispatcher disp = request.getRequestDispatcher("/SalesOpportunity.jsp"); 
        disp.forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
