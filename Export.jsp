<%-- 
    Document   : Export
    Created on : Mar 16, 2018, 2:56:06 PM
    Author     : shezi
--%>

<%@ page import="java.io.*,java.sql.*"%>
<html>
<body>
<% 
String filename = "c:\\csv\\csv_file.csv";
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";
String dbName = "kbcsdatabasev5";
String driver = "com.mysql.jdbc.Driver";
String userName = "cassius"; 
String password = "cayShez@123";
Statement stmt;
try
{
FileWriter fw = new FileWriter(filename);
fw.append("description");
fw.append(',');
fw.append("date");
fw.append(',');
fw.append("score");
fw.append(',');
fw.append("dateEnding");
fw.append(',');
fw.append("sourceName");
fw.append(',');
fw.append("i_d");
fw.append('\n');
Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url+dbName,userName,password);
String query = "select * from recordv1";
stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(query);
while(rs.next())
{
fw.append(rs.getString(1));
fw.append(',');
fw.append(rs.getString(2));
fw.append(',');
fw.append(rs.getString(3));
fw.append(',');
fw.append(rs.getString(4));
fw.append(',');
fw.append(rs.getString(5));
fw.append(',');
fw.append(rs.getString(6));
fw.append('\n');
}
fw.flush();
fw.close();
conn.close();
//out.println("Successfully Created Csv file.");
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>