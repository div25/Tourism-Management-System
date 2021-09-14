<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="application/vnd.ms-excel"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<style>
body{
	background-color: #EAE7DC;
}
.container{
	background-color: #EAE7DC;
}
.topNavigation {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topNavigation a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topNavigation .leftNavigation a {
  float:right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topNavigation a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topNavigation a.home {
  background-color: #3333ff;
  color: white;
}

.add{
	margin-left: 75%;
}
input[type=text] {
  width: 130px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  margin-top: 2px;
  margin-left: 25%;
  padding-top: 2px;
  padding-right: 25%;
  padding-bottom: 5px;
  padding-left: 10px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}
input[type=text]:focus {
  width: 50%;
}

#search{
margin-left: 25%;
}

.pagination li:hover{
    cursor: pointer;
}

body{

    background-color: #eee; 
}

table th , table td{
    text-align: center;
}

</style>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
<!-- 
<div class="topNavigation">
  <a class="home" href="/showAdminPortal">Return Admin Home</a>
  <div class="leftNavigation">
<a href="/logout">Log Out</a>
</div>
</div>
 -->
<center><h1>Report Summary</h1></center>
<div class="container">
<br><br>
<table class=" table table-striped" id="table-id">
	<tr>
		<th>Feedback Id</th>
		<th>Feedback Name</th>
		<th>Reply 1</th>
		<th>Reply 2</th>
		<th>Reply 3</th>
		<th>Reply 4</th>
		<th>Reply 5</th>
	</tr>
	<c:forEach items="${bookingDetails}" var="details">
		<tr>
			<td>${details.feedbackNo}</td>
			<td>${details.name}</td>
			<td>${details.question1}</td>
			<td>${details.question2}</td>
			<td>${details.question3}</td>
			<td>${details.question4}</td>
			<td>${details.question5}</td>
		</tr>
	</c:forEach>
</table>
</div>
<br>
<br>
<!--<center>Click <a href="/downloadReport?start_date=${details.dateOfTravel}">here </a>to Download.</center>-->

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
 <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>