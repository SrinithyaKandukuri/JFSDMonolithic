<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>

</style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<br>

<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>

<h3 align=center><u>Update Book</u></h3>

<form method="post" action="update">

<table align=center>

<tr>
<td><label>BookName</label></td>
<td>
<input type="text" name="bookname" required="required" value="${emp.bookname}"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Category</label></td>
<td>
<select name="category" required>
<option value="${book.category}" selected >${emp.category}</option>
<option value="Action">Action</option>
<option value="Comedy">Comedy</option>
<option value="Fiction">Fiction</option>
<option value="Novel">Novel</option>
<option value="Telugu">Telugu</option>
<option value="Hindi">Hindi</option>
<option value="Science">Science</option>
<option value="Horror">Horror</option>
</select>
</td>
</tr>

<tr><td></td></tr>


<tr>
<td><label>Cost</label></td>
<td><input type="number" name="cost" step="0.01" required  value="${book.cost}"    /></td>
</tr>

<tr>
<td><label>Qunatity</label></td>
<td>
${book.quantity}
</td>
</tr>

<tr><td></td></tr>


<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Update" class="button"></td>
</tr>

</table>

</form>

</body>
</html>