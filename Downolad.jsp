<%-- 
    Document   : Downolad
    Created on : May 17, 2018, 2:18:34 PM
    Author     : shezi
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%
ServletOutputStream output = response.getOutputStream();
String Content=new String("");
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/file", "cassius", "cayShez@123");
Statement st=con.createStatement();
ResultSet rst= st.executeQuery("select file_data from file");
if(rst.next())
{
Content=rst.getString("file_data");
}
con.close();
}catch(Exception e){
System.out.println("Exception caught"+e.getMessage());
}
byte requestBytes[] = Content.getBytes();
ByteArrayInputStream bis = new ByteArrayInputStream(requestBytes);
response.reset();
response.setContentType("application/doc");
response.setHeader("Content-disposition","attachment; filename=" +"file.doc");
byte[] buf = new byte[1024];
int len;
while ((len = bis.read(buf)) > 0){
output.write(buf, 0, len);
}
bis.close();
response.getOutputStream().flush();
%>