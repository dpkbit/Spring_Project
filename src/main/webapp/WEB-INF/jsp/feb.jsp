<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Scanner"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@page import="java.util.*" %>
<%@page import="com.google.gson.*" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body> 
<h1>Employee Attandence of February Month 2019 </h1> 
<table border="2" width="70%" cellpadding="2"> 
<tr><th>Emp_id</th><th>Emp_Name</th><th>1st Feb</th><th>2nd Feb</th><th>3rd Feb</th><th>4th Feb</th><th>5th Feb</th><th>6th Feb</th><th>7th Feb</th><th>8th Feb</th><th>9th Feb</th><th>10th Feb</th><th>11th Feb</th><th>12th Feb</th><th>13 Feb</th><th>14 Feb</th><th>15 Feb</th><th>16 Feb</th><th>17 Feb</th><th>18 Feb</th><th>19 Feb</th><th>20 Feb</th><th>21 Feb</th><th>22 Feb</th><th>23 Feb</th><th>24 Feb</th><th>25 Feb</th><th>26 Feb</th><th>27 Feb</th><th>28 Feb</th></tr>  
<c:forEach var="feb" items="${list}"> 
<tr> 
<td>${feb.id} </td> 
<td>${feb.emp_name}</td> 
<td>${feb.day1}</td> 
<td>${feb.day2}</td>
<td>${feb.day3}</td>
<td>${feb.day4}</td>
<td>${feb.day5}</td>
<td>${feb.day6}</td>
<td>${feb.day7}</td>
<td>${feb.day8}</td>
<td>${feb.day9}</td>
<td>${feb.day10}</td>
<td>${feb.day11}</td>
<td>${feb.day12}</td>
<td>${feb.day13}</td>
<td>${feb.day14}</td>
<td>${feb.day15}</td>
<td>${feb.day16}</td>
<td>${feb.day17}</td>
<td>${feb.day18}</td>
<td>${feb.day19}</td>
<td>${feb.day20}</td>
<td>${feb.day21}</td> 
<td>${feb.day22}</td>
<td>${feb.day23}</td>
<td>${feb.day24}</td>
<td>${feb.day25}</td>
<td>${feb.day26}</td>
<td>${feb.day27}</td>
<td>${feb.day28 }</td>
</tr> 
</table>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['1 February',${feb.day1}],
          ['4 February',${feb.day4}],
          ['5 February',${feb.day5}],
          ['6 February',${feb.day6}],
          ['7 February',${feb.day7}],
          ['8 February',${feb.day8}],
          ['11 February',${feb.day11}],
          ['12 February',${feb.day12}],
          ['13 February',${feb.day13}],
          ['14 February',${feb.day14}],
          ['15 February',${feb.day15}],
          ['18 February',${feb.day18}],
          ['19 February',${feb.day19}],
          ['20 February',${feb.day20}],
          ['21 February',${feb.day21}],
          ['22 February',${feb.day22}],
          ['25 February',${feb.day25}],
          ['26 February',${feb.day26}],
          ['27 February',${feb.day27}],
          [' 	28 February',${feb.day28}]
            
      
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


<h1>Employee Details</h1>
<table border="2" width="70%" cellpadding="2"> 
<tr><th>Emp_id</th><th>Emp_Name</th></tr>
<c:forEach var="feb" items="${list}"> 
<tr> 
<td>${feb.id}  </td> 
<td>${feb.emp_name}</td> 
</c:forEach> 
</table> <br> 
<h1> week 1</h1>
<table border="2" width="70%" cellpadding="2">
<tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Total hours</th></tr>
<c:forEach var="feb" items="${list}"> 
<tr> 
<td>${feb.id} </td> 
<td>${feb.day1}</td> 
<td>${feb.day2}</td>

<td>${feb.day1}</td> 

</tr>
</c:forEach>
<c:forEach var="feb" items="${list}"> 
</c:forEach> 


<table border="2" width="70%" cellpadding="2">
<h1> week 2</h1>
<tr><th>Emp_id</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Total hours</th></tr>
<c:forEach var="feb" items="${list}"> 
<tr> 
<td>${feb.id}  </td> 
<td>${feb.day3}</td> 
<td>${feb.day4}</td>
<td>${feb.day5}</td>
<td>${feb.day6}</td>
<td>${feb.day7}</td>
<td>${feb.day8}</td>
<td>${feb.day9}</td> 
<td>${feb.day4+feb.day5+feb.day6+feb.day7+feb.day8}</td> 
</tr>
</table>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
	
var data = google.visualization.arrayToDataTable([
['', 'Hours per Day'],
['Monday',${feb.day4}],
['Tuesday', ${feb.day5}],
['Wednesday', ${feb.day6}],
['Thursday', ${feb.day7}],

['Friday',${feb.day8}]
]);

var options = {
title: 'Week 2nd Activities',
pieHole: 0.4,
};

var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
chart.draw(data, options);
}

</script>
   </c:forEach>
   <div id="donutchart" style="width: 900px; height: 500px;"></div>
<table border="2" width="70%" cellpadding="2">
<h1> week 3</h1>
<tr><th>Emp_id</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th> <th>Total hours</th>
<c:forEach var="feb" items="${list}"> 
<tr> 
<td>${feb.id} </td> 
<td>${feb.day10}</td> 
<td>${feb.day11}</td>
<td>${feb.day12}</td>
<td>${feb.day13}</td>
<td>${feb.day14}</td>
<td>${feb.day15}</td>
<td>${feb.day16}</td> 
<td>${feb.day11+feb.day12+feb.day13+feb.day14+feb.day15}</td> 

</c:forEach> 
<table border="2" width="70%" cellpadding="2">
<h1> week 4</h1>
<tr><th>Emp_id</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th> <th>Total hours</th>
<c:forEach var="feb" items="${list}"> 
<tr> 

<td>${feb.id} </td> 
<td>${feb.day17}</td> 
<td>${feb.day18}</td>
<td>${feb.day19}</td>
<td>${feb.day20}</td>
<td>${feb.day21}</td>
<td>${feb.day22}</td>
<td>${feb.day23}</td> 
<td>${feb.day18+feb.day19+feb.day20+feb.day21+feb.day22}</td> 

</c:forEach> 

<table border="2" width="70%" cellpadding="2">
<h1> week 5</h1>
<tr><th>Emp_id</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Total hours</th>
<c:forEach var="feb" items="${list}"> 
<tr> 

<td>${feb.id} </td> 
<td>${feb.day24}</td> 
<td>${feb.day25}</td>
<td>${feb.day26}</td>
<td>${feb.day27}</td>
<td>${feb.day28}</td>
<td>${feb.day25+feb.day26+feb.day27+feb.day28}</td> 

</c:forEach> 

</body>
</html> 