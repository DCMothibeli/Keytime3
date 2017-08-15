<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : project
    Created on : May 30, 2017, 12:24:32 PM
    Author     : ConstanceMothibeli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add project</title>
        
    </head>
    <body>
        
        <h1>Welcome to keystroke projects</h1>
        <form method="POST" action="insertproject.jsp" >
            <table>
                <h3> Create New Client</h3>
                <tr><td>Select Client Name:</td><td>
                        <select name="clientName">
                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clientprojectsdb", "root", "Dikengkeng123");
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from client");
                                while (rs.next()) {
                            %>

                            <option value="<%=rs.getInt("clientId")%>"> <%=rs.getString("clientName")%></option>
                            <%
                                }
                            %>
                        </select>
                   
                </tr>
                <tr><td> Enter Project Name:</td> <td> <input type="text" name="projectname"</td></tr>
   <tr><td> Enter client Name:</td> <td> <input type="text" name="clientid"</td></tr>
                <tr><<td><input type="submit" value="Submit" >               
                    </td></tr>

            </table>

        </form>
    </body>
</html>
