<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book Details</title>
<style>
  @charset "UTF-8";
* {
  margin: 0;
  padding: 0;
  outline: 0;
  box-sizing: border-box;
}
body {
  background-size:cover;
  background-position: center center;
  height: 100vh;
    font-family: poppins;
}
.navbar{
  padding-top: 25px;
}
nav {
 position:relative;
 width: calc(100% - 60px);
 margin: 0 auto;
 background: #000000;
 z-index: 1;
 text-align: right;
 padding-right: 2%;
}
.logo {
  width: 25%;
  float: left;
  text-transform: uppercase;
  color: #fff;
  font-size: 25px;
  text-align: left;
  padding: 10px 25px;
}
.menu-area li {
  display: inline-block;
    list-style-type: none;
}
.menu-area a {
  color: #fff;
  font-weight: 900;
  letter-spacing: 1px;
  text-transform: uppercase;
  display: block;
  padding: 15px 25px;
  font-size: 14px;
  line-height: 30px;
  position:relative;
  z-index: 1;
    text-decoration: none;    
}
.menu-area a:hover {
  background: deeppink;
  color: #fff;
}
nav:before {
  position: absolute;
  content: '';
  border-top: 10px solid #333;
  border-right: 10px solid #333;
  border-left: 10px solid transparent;
  border-bottom: 10px solid transparent;
  top: 100%;
  left: 0;
}
nav:after {
  position: absolute;
  content: '';
  border-top: 10px solid #333;
  border-left: 10px solid #333;
  border-right: 10px solid transparent;
  border-bottom: 10px solid transparent;
  top: 100%;
  right: 0;
}
       .navbar{
            background-color: black;
            border-radius: 30px;
            
        }
        .navbar ul{
            overflow: auto;
        }
        .navbar li{
            float:left;
            list-style: none; 
            margin: 13px 20px;
            
        }
        .navbar li a{
            padding: 3px 3px;
            text-decoration: none;
            color: white;
        }
        .navbar li a:hover{
            color: white
        }
        .search{
            float: right;
            color: white;
            padding: 12px 75px;
        }
        .navbar input{
            border: 2px solid black;
            border-radius: 14px;
            padding: 3px 17px;
            width: 129px;
        }
        .button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=file],textarea
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}


    </style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>

<h3 align=center> <u>Update Profile</u> </h3>
<center>
<form method="post" action="/updatebookdetails/update/${book.id}">

<table>

<tr>
<td><label>id</label></td>
<td>
<input type="text" name="id" value="${book.id}" readonly />

</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="bookname" value="${book.bookname}"/>

</td>
</tr>

<tr><td></td></tr>


<tr>
<td><label>Cost</label></td>
<td><input type="number" name="cost" step="0.01" required  value="${book.cost}"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Quantity</label></td>
<td><input type="number" name="quantity" required value="${book.quantity}"/></td>
</tr>

<tr><td></td></tr>


<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Update" class="button"></td>
</tr>

</table>

</form>
</center>
</body>
</html>