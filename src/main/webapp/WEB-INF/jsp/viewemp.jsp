<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
   <%@ page import="com.beans.Emp" %>
   <%@ page import="java.util.*,java.sql.*" %>
   <%@ page import="com.google.gson.Gson"%>
   <%@ page import="com.google.gson.JsonObject"%>
   <%@page import="java.sql.*" %> 
   <%@page import="java.util.*" %>
   <%@page import="com.google.gson.*" %>
 

<html>
<head>
</head>
<body>  
<h1>Employees List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Emp_id</th><th>Emp_Name</th><th>1st Jan</th><th>2nd Jan</th><th>3rd Jan</th><th>4th Jan</th><th>5th Jan</th><th>6th Jan</th><th>7th Jan</th><th>8th Jan</th><th>9th Jan</th><th>10th Jan</th><th>11th Jan</th><th>12th Jan</th><th>13 Jan</th><th>14 Jan</th><th>15 Jan</th><th>16 Jan</th><th>17 Jan</th><th>18 Jan</th><th>19 Jan</th><th>20 Jan</th><th>21 Jan</th><th>22 Jan</th><th>23 Jan</th><th>24 Jan</th><th>25 Jan</th><th>26 Jan</th><th>27 Jan</th><th>28 Jan</th><th>29 Jan</th><th>30 Jan</th><th>31 Jan</th></tr>  
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>${emp.id}</td>  
   <td>${emp.emp_name}</td>  
   <td>${emp.day1}</td>  
   <td>${emp.day2}</td>
   <td>${emp.day3}</td>
   <td>${emp.day4}</td>
   <td>${emp.day5}</td>
   <td>${emp.day6}</td>
   <td>${emp.day7}</td>
   <td>${emp.day8}</td>
   <td>${emp.day9}</td>
   <td>${emp.day10}</td>
   <td>${emp.day11}</td>
   <td>${emp.day12}</td>
   <td>${emp.day13}</td>
   <td>${emp.day14}</td>
   <td>${emp.day15}</td>
   <td>${emp.day16}</td>
   <td>${emp.day17}</td>
   <td>${emp.day18}</td>
   <td>${emp.day19}</td>
   <td>${emp.day20}</td>
   <td>${emp.day21}</td>  
   <td>${emp.day22}</td>
   <td>${emp.day23}</td>
   <td>${emp.day24}</td>
   <td>${emp.day25}</td>
   <td>${emp.day26}</td>
   <td>${emp.day27}</td>
   <td>${emp.day28}</td>
   <td>${emp.day29}</td>
   <td>${emp.day30}</td>
   <td>${emp.day31 }</td>
   
   </tr>  
     
   </table>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['1 Jan',${emp.day1}],
          ['2 Jan',${emp.day2}],
          ['3 Jan',${emp.day3}],
          ['4 Jan',${emp.day4}],
          ['7 Jan',${emp.day7}],
          ['8 Jan',${emp.day8}],
          ['9 Jan',${emp.day9}],
          ['10 Jan',${emp.day10}],
          ['11 Jan',${emp.day11}],
          ['14 Jan',${emp.day14}],
          ['15 Jan',${emp.day15}],
          ['16 Jan',${emp.day16}],
          ['17 Jan',${emp.day17}],
          ['18 Jan',${emp.day18}],
          ['21 Jan',${emp.day21}],
          ['22 Jan',${emp.day22}],
          ['23 Jan',${emp.day23}],
          ['24 Jan',${emp.day24}],
          ['25 Jan',${emp.day25}],
          ['28 Jan',${emp.day28}],
          ['29 Jan',${emp.day29}],
          ['30 Jan',${emp.day30}],
          ['31 Jan',${emp.day31}],
          
                
   ]);

        var options = {
          title: 'My Daily Activities',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
    </c:forEach>
     <div id="piechart_3d" style="width: 900px; height: 500px;"></div> 
   <br>
   <h2>Empolyee Deatils weekly</h2>
   
   <table border="2" width="70%" cellpadding="2">  
   <tr><th>Emp_id</th><th>Emp_Name</th></tr>
    <c:forEach var="emp" items="${list}">   
    <tr>  
   <td>${emp.id} </td>  
   <td>${emp.emp_name}</td>  
   </c:forEach>  
    </table> <br>
    <table border="2" width="70%" cellpadding="2"> 
    <h1> week 1</h1>
   
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
  <td>${emp.id} </td> 
   <td>${emp.day1}</td>  
   <td>${emp.day2}</td>
   <td>${emp.day3}</td>
   <td>${emp.day4}</td>
   <td>${emp.day5}</td>
   <td>${emp.day6}</td>
   <td>${emp.day7}</td> 
   <td>${emp.day1+emp.day2+emp.day3+emp.day4+emp.day7}</td> 
   
   </tr>  
   </table>
 
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
	
var data = google.visualization.arrayToDataTable([
['', 'Hours per Day'],
['Tuesday',${emp.day1}],
['Wednesday', ${emp.day2}],
['Thursday', ${emp.day3}],
['Friday', ${emp.day4}],

['Monday',${emp.day7}]
]);

var options = {
title: 'Week 1st Activities',
pieHole: 0.4,
};

var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
chart.draw(data, options);
}

</script>
   </c:forEach>
   <div id="donutchart" style="width: 900px; height: 500px;"></div>
     
    <table border="2" width="70%" cellpadding="2">
    <br> <h1> week 2</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
   <td>${emp.id} </td> 
   <td>${emp.day8}</td>  
   <td>${emp.day9}</td>
   <td>${emp.day10}</td>
   <td>${emp.day11}</td>
   <td>${emp.day12}</td>
   <td>${emp.day13}</td>
   <td>${emp.day14}</td> 
   <td>${emp.day8+emp.day9+emp.day10+emp.day11+emp.day14}</td> 
   
   </tr>
   </table>

<script src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChartt);
function drawChartt() {
	
var dataa = google.visualization.arrayToDataTable([
['', 'Hours per Day'],
['Tuesday',${emp.day8}],
['Wednesday',${emp.day9}],
['Thursday', ${emp.day10}],
['Friday', ${emp.day11}],

['Monday',${emp.day14}]
]);

var optionss = {
title: 'Week 2 Activities',
pieHole: 0.4,
};

var chartt = new google.visualization.PieChart(document.getElementById('donutchartt'));
chartt.draw(dataa, optionss);
}

</script>
   </c:forEach>
   <div id="donutchartt" style="width: 900px; height: 500px;"></div>

   
   <table border="2" width="70%" cellpadding="2"> <br>
    <h1> week 3</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">   
    <tr>  
  <td>${emp.id} </td> 
   <td>${emp.day15}</td>  
   <td>${emp.day16}</td>
   <td>${emp.day17}</td>
   <td>${emp.day18}</td>
   <td>${emp.day19}</td>
   <td>${emp.day20}</td>
   <td>${emp.day21}</td> 
   <td>${emp.day15+emp.day16+emp.day17+emp.day18+emp.day21}</td> 
   
   </c:forEach>
   </tr>
   </table>
     
   
   <table border="2" width="70%" cellpadding="2">
   <br> <h1> week 4</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th> <th>Total hours</th>
   <c:forEach var="emp" items="${list}">  
    <tr>  
    
  <td>${emp.id} </td> 
   <td>${emp.day22}</td>  
   <td>${emp.day23}</td>
   <td>${emp.day24}</td>
   <td>${emp.day25}</td>
   <td>${emp.day26}</td>
   <td>${emp.day27}</td>
   <td>${emp.day28}</td> 
    <td>${emp.day22+emp.day23+emp.day24+emp.day25+emp.day28}</td> 
   
   </c:forEach>
   </tr>
   </table>  
    
    <table border="2" width="70%" cellpadding="2">
   <br>  <h1> week 5</h1>
    <tr><th>Emp_id</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Sunday</th><th>Monday</th><th>Total hours</th>
   <c:forEach var="emp" items="${list}"> 
    <tr>  
   <td>${emp.id} </td> 
   <td>${emp.day29}</td>  
   <td>${emp.day30}</td>
   <td>${emp.day31}</td>
   <td></td>
   <td></td>
   <td></td>
   <td></td>
   <td>${emp.day29+emp.day30+emp.day31}</td> 
   </c:forEach>
   </tr>
   </table>
   
  
   
   </body>
   </html> 
  