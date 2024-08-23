<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1"%>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/viewcustomerbyid.css">

<style>
</style>
</head>
<body>


	<%@ include file="adminnavbar.jsp"%>
	<div class="statistics-container">

		<div class="statistics-box">
			<h3> Customer Details</h3>
			<p>ID : ${cus.id}</p><br>
			<p> Name : ${cus.name}</p><br> 
			<p>Gender :${cus.gender}</p><br>
			<p> DateofBirth : ${cus.dateofbirth}</p><br>
			<p>Email : ${cus.email}</p><br>
			<p> Contact No : ${cus.contactno}</p><br>
		</div>
</body>
</html>