<%-- 
    Document   : jspdatesbtween2
    Created on : Jul 4, 2017, 11:09:48 AM
    Author     : ConstanceMothibeli
--%>
 <%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.Calendar" %>
<%@page contentType="text/html" import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
         <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <script type="text/javascript">
         
     $("#from").datepicker();
// using Datepicker value example code
    $('#getBetween').on('click', function () {
    var start = $("#from").datepicker("getDate"),
        end = $("#to").datepicker("getDate");
    var between = getDates(start, end);
    $('#results').html(between.join('<br> '));
});
<%--
// using Date string value example code

$('#getBetween2').on('click', function () {
    var start = new Date('2014-02-13'),
    end = new Date('2014-02-17');
    var between = getDates(start, end);
    $('#results2').html(between.join('<br> '));
});

            --%>
// This function doing this work.
function getDates(start, end) {
    var datesArray = [];
    var startDate = new Date(start);
    while (startDate <= end) {
        datesArray.push(new Date(startDate));
        startDate.setDate(startDate.getDate() + 1);
    }
    return datesArray;
}
   
</script>
  <title>JSP Page</title>    
 <b>Using Date picker value<br/></b>
<input id="from" />
<input id="to" />
<button id="getBetween">Get Between Dates</button>
<div id="results"></div>
<br/>
<br/>
<b>Start date = 2014-07-13, End date =  2014-07-17.
    Click "Get Between Dates 2" button to get the result using you own date String.</b>
<br/>
<button id="getBetween2">Get Between Dates 2</button>
<div id="results2"></div>

   
</html>
