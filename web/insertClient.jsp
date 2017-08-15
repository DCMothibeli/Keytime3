<%-- 
    Document   : insertClient
    Created on : May 29, 2017, 1:56:43 PM
    Author     : ConstanceMothibeli
--%>

<%@page import="java.sql.*,java.util.*"%>

<%
String clientname=request.getParameter("clientname");
String location=request.getParameter("location");

try{
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clientprojectsdb", "root", "Dikengkeng123");
    Statement st=con.createStatement();
    
   int i=st.executeUpdate("insert into client(clientName,location) values('"+clientname+"','" + location+"')");
  
   
   
   
}

catch(Exception e){
System.out.print("not saved");
e.printStackTrace();
}

%>






<br>
<a href="index.jsp"> Go back to home page</a>




