<%-- 
    Document   : newjsp1
    Created on : Jul 7, 2017, 1:02:52 PM
    Author     : ConstanceMothibeli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="/resources/demos/external/jquery-mousewheel/jquery.mousewheel.js"></script>
  <script>
        <title>JSP Page</title>
        <script>
    $(function() {
        $('#spinner').spinner({
            min: 2,
            max: 20,
            step: 2
        });
    });
</script>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <input type="number" name="" id="spinner" min="1" max="3"/> 
       
    </body>
</html>
