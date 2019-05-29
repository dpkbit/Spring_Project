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
<h1>Employee Attandence of march Month 2019 </h1> 
<table border="2" width="70%" cellpadding="2"> 
<tr><th>Emp_id</th><th>Emp_Name</th><th>1st March</th><th>2nd March</th><th>3rd March</th><th>4th March</th><th>5th March</th><th>6th March</th><th>7th March</th><th>8th March</th><th>9th March</th><th>10th March</th><th>11th March</th><th>12th March</th><th>13 March</th><th>14 March</th><th>15 March</th><th>16 March</th><th>17 March</th><th>18 March</th><th>19 March</th><th>20 March</th><th>21 March</th><th>22 March</th><th>23 March</th><th>24 March</th><th>25 March</th><th>26 March</th><th>27 March</th><th>28 March</th><th>29 March</th><th>30 March</th><th>31 March</th></tr>  
<c:forEach var="march" items="${list}"> 
<tr> 
<td>${march.id} </td> 
<td>${march.emp_name}</td> 
<td>${march.day1}</td> 
<td>${march.day2}</td>
<td>${march.day3}</td>
<td>${march.day4}</td>
<td>${march.day5}</td>
<td>${march.day6}</td>
<td>${march.day7}</td>
<td>${march.day8}</td>
<td>${march.day9}</td>
<td>${march.day10}</td>
<td>${march.day11}</td>
<td>${march.day12}</td>
<td>${march.day13}</td>
<td>${march.day14}</td>
<td>${march.day15}</td>
<td>${march.day16}</td>
<td>${march.day17}</td>
<td>${march.day18}</td>
<td>${march.day19}</td>
<td>${march.day20}</td>
<td>${march.day21}</td> 
<td>${march.day22}</td>
<td>${march.day23}</td>
<td>${march.day24}</td>
<td>${march.day25}</td>
<td>${march.day26}</td>
<td>${march.day27}</td>
<td>${march.day28}</td>
<td>${march.day29}</td>
<td>${march.day30}</td>
<td>${march.day31}</td>
</tr>
</table>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['1 March',${march.day1}],
            ['4 March',${march.day4}],
            ['5 March',${march.day5}],
            ['6 March',${march.day6}],
            ['7 March',${march.day7}],
            ['8 March',${march.day8}],
            ['11 March',${march.day11}],
            ['12 March',${march.day12}],
            ['13 March',${march.day13}],
            ['14 March',${march.day14}],
            ['15 March',${march.day15}],
            ['18 March',${march.day18}],
            ['19 March',${march.day19}],
            ['20 March',${march.day20}],
            ['21 March',${march.day21}],
            ['22 March',${march.day22}],
            ['25 March',${march.day25}],
            ['26 March',${march.day26}],
            ['27 March',${march.day27}],
            ['28 March',${march.day28}],
            ['29 March',${march.day29}]
              
        
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


<h1>Employee Details</h1>
<table border="2" width="70%" cellpadding="2"> 
<tr><th>Emp_id</th><th>Emp_Name</th></tr>
<c:forEach var="march" items="${list}"> 
<tr> 
<td>${march.id}  </td> 
<td>${march.emp_name}</td> 
</c:forEach> 
</table> <br> 
<h1> week 1</h1>
<table border="2" width="70%" cellpadding="2">
<tr><th>Emp_id</th><th>Friday</th><th>Saturday</th><th>Total hours</th></tr>
<c:forEach var="march" items="${list}"> 
<tr> 
<td>${march.id} </td> 
<td>${march.day1}</td> 
<td>${march.day2}</td>

<td>${march.day1}</td> 

</tr>
</c:forEach>
<c:forEach var="march" items="${list}"> 
</c:forEach> 


<table border="2" width="70%" cellpadding="2">
<h1> week 2</h1>
<tr><th>Emp_id</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Total hours</th></tr>
<c:forEach var="march" items="${list}"> 
<tr> 
<td>${march.id}  </td> 
<td>${march.day3}</td> 
<td>${march.day4}</td>
<td>${march.day5}</td>
<td>${march.day6}</td>
<td>${march.day7}</td>
<td>${march.day8}</td>
<td>${march.day9}</td> 
<td>${march.day4+march.day5+march.day6+march.day7+march.day8}</td> 
</tr>
</table>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
	
var data = google.visualization.arrayToDataTable([
['', 'Hours per Day'],
['Monday',${march.day4}],
['Tuesday', ${march.day5}],
['Wednesday', ${march.day6}],
['Thursday', ${march.day7}],

['Friday',${march.day8}]
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
<tr><th>Emp_id</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th> <th>Total hours</th></tr>
<c:forEach var="march" items="${list}"> 
<tr> 
<td>${march.id} </td> 
<td>${march.day10}</td> 
<td>${march.day11}</td>
<td>${march.day12}</td>
<td>${march.day13}</td>
<td>${march.day14}</td>
<td>${march.day15}</td>
<td>${march.day16}</td> 
<td>${march.day11+march.day12+march.day13+march.day14+march.day15}</td> 

</c:forEach> 
<table border="2" width="70%" cellpadding="2">
<h1> week 4</h1>
<tr><th>Emp_id</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th> <th>Total hours</th></tr>
<c:forEach var="march" items="${list}"> 
<tr> 

<td>${march.id} </td> 
<td>${march.day17}</td> 
<td>${march.day18}</td>
<td>${march.day19}</td>
<td>${march.day20}</td>
<td>${march.day21}</td>
<td>${march.day22}</td>
<td>${march.day23}</td> 
<td>${march.day18+march.day19+march.day20+march.day21+march.day22}</td> 

</c:forEach> 

<table border="2" width="70%" cellpadding="2">
<h1> week 5</h1>
<tr><th>Emp_id</th><th>Sunday</th><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th><th>Total hours</th></tr>
<c:forEach var="march" items="${list}"> 
<tr> 

<td>${march.id} </td> 
<td>${march.day24}</td> 
<td>${march.day25}</td>
<td>${march.day26}</td>
<td>${march.day27}</td>
<td>${march.day28}</td>
<td>${march.day29}</td>
<td>${march.day30}</td>
<td>${march.day25+march.day26+march.day27+march.day28+march.day29}</td> 

</c:forEach> 

<table border="2" width="70%" cellpadding="2">
<h1> week 6</h1>
<tr><th>Emp_id</th><th>Sunday</th></tr>
<c:forEach var="march" items="${list}"> 
<tr> 

<td>${march.id} </td> 
<td>${march.day31}</td>
</c:forEach> 

</body>
</html> 