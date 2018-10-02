<%-- 
    Document   : update-process
    Created on : Apr 30, 2018, 10:33:50 AM
    Author     : shezi
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/kbcsdatabasev5";%>
<%!String user = "cassius";%>
<%!String psw = "cayShez@123";%>
<%
int businessId = Integer.parseInt(request.getParameter("businessId"));
String name = request.getParameter("businessName");
String address = request.getParameter("businessAddress");
String telephone = request.getParameter("businessTelephone");
String description = request.getParameter("businessDescription");
String targetMaket = request.getParameter("targetMarket");
String email = request.getParameter("businessEmailAddress");
String industry = request.getParameter("industryDesignation");

Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "update businessprofile set businessName=?,businessAddress=?,businessTelephone=?,businessDescription=?,targetMarket=?,businessEmailAddress=?,industryDesignation=? where businessId=?";
ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, telephone);
            ps.setString(4, description);
            ps.setString(5, targetMaket);
            ps.setString(6, email);
            ps.setString(7, industry);
            ps.setInt(8, businessId);
           
int i = ps.executeUpdate();
if(i > 0)
{
    RequestDispatcher dis = request.getRequestDispatcher("/BusinessProfileView.jsp"); 
    dis.forward(request, response);
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
%>
