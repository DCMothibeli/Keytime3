<%-- 
    Document   : client
    Created on : May 29, 2017, 1:57:06 PM
    Author     : ConstanceMothibeli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Client</title>
    </head>
    <body>
        <h1>Welcome to Keystroke Projects</h1>
        
        
        <form method="post"  >
<table>
    <h3> Create New Client</h3>
<tr><td>Client Name:</td><td><input type="text" name="cl ientname"></td></tr>
<tr><td>Location:</td><td><input type="text" name="location"></td></tr>

<tr><td></td><td><input type="submit" value="Submit"></td></tr>

</table>
</form>

     
 

        
        


    </body>
        
        
        
        
</html>
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
  
   
   out.print("hi");
   
}

catch(Exception e){
System.out.print("not saved");
e.printStackTrace();
}

%>






<br>
<a href="index.jsp"> Go back to home page</a>




