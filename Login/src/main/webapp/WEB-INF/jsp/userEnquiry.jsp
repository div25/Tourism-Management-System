<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>POST YOUR ENQUIRY</title>
<style>
.body{
	background-color: #EAE7DC;
}
.container {
	margin-top: 2%;
	width: 40%;
	height: 50%;
	border: 3px solid black;
	padding: 20px;
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
</style>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
<div class="topNavigation">
  <a class="home" href="/showHome">Home</a>
  <div class="leftNavigation">
<a href="/logout">Log Out</a>
</div>
</div>
<font color="green" size="6px">${success}</font>
<div class="body">
<br><br>
<center><h1>POST YOUR ENQUIRY:</h1></center>
<font color="green" size="6px">${ok}</font>
	<div class="container">
		<f:form method="POST" modelAttribute="enquiry">
			<table style="border-collapse: separate; border-spacing: 0 15px;">
				<tr>
					<td><b>Email Id:</b></td><td> <f:input style="width: 350px;"
							type="text" name="email" path="email"
							class="form-control" required="required" placeholder="Enter your email" /></td>
					<td><f:errors path="email" cssClass="text-warning" /></td>
				</tr>
				<tr>
					<td><b>Package Id:</b></td><td> <f:input style="width: 350px;"
							type="text" name="packageId" path="packageId"
							class="form-control" required="required" /></td>
					<td><f:errors path="packageId" cssClass="text-warning" /></td>
				</tr>
				<tr>
					<td><b>Enquiry:</b>
					<f:textarea rows="6" cols="10" style="width: 350px;" type="text" name="enquiry"
							path="enquiry" class="form-control"
							required="required" /></td>
				</tr>
					<tr>
					<td><button type="submit" class="btn btn-success">Submit</button></td>
					<td><button type="reset" class="btn btn-danger" value="Clear">Reset</button></td>
					</tr>
			</table>
		</f:form>
		</div>
		</div>
</body>
</html>