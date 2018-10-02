<%-- 
    Document   : update-process
    Created on : Apr 30, 2018, 10:33:50 AM
    Author     : shezi
--%>

<%@page import="za.ac.kbcs.model.SourceData"%>
<%@page import="za.ac.kbcs.dao.SourcesDao"%>
<%@page import="za.ac.kbcs.web.SubmitProjectServlet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="za.ac.kbcs.dao.DaoClasses"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/kbcsdatabasev5";%>
<%!String user = "cassius";%>
<%!String psw = "cayShez@123";%>


<%

String Id = request.getParameter("id");
int projectID = Integer.parseInt(Id);
String status = request.getParameter("status");
    

Connection con = null;
PreparedStatement ps = null;
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
Statement st=con.createStatement();


SourcesDao dao = new SourcesDao();
try
{
   dao.RestoreOpp(Id);
   st.executeUpdate("DELETE FROM opparchive WHERE i_d="+Id);
         
RequestDispatcher rd= request.getRequestDispatcher("/ViewOpp.jsp");
rd.forward(request, response);
}
catch (Exception e) {
e.printStackTrace();
}

%>
