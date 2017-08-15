<%-- 
    Document   : index
    Created on : May 29, 2017, 11:20:27 AM
    Author     : ConstanceMothibeli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        
        
        <style type="text/css" media="screen"> #horizontalmenu ul { padding:1; margin:1; list-style:none; } #horizontalmenu li { float:left; position:relative; padding-right:100; display:block; border:4px solid #CC55FF; border-style:inset; } #horizontalmenu li ul { display:none; position:absolute; } #horizontalmenu li:hover ul{ display:block; background:white; height:auto; width:8em; } #horizontalmenu li ul li{ clear:both; border-style:none;} </style>


        
    </head>
    <body>
        
        <h1> Welcome To Keystroke Projects</h1>
        <div id="horizontalmenu">
        <ul>
            <li><a href="#">Admin></a> 
                <ul> <li><a href="client.jsp">Add Client</a></li>
                    <li><a href="project.jsp">Add project</a>
                    </li> <li><a href="#">Add Team Member</a></li> 
                </ul> </li>

            
            
        </ul>
        
        </div>
        
    </body>
</html>
