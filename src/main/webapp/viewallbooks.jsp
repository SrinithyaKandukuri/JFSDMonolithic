<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
    <style>
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
        * {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
.update-button,
    .delete-button {
        display: inline-block;
        padding: 8px 12px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border: 1px solid #007bff;
        border-radius: 4px;
        cursor: pointer;
        margin: 5px;
        text-align: center;
    }

    .update-button:hover,
    .delete-button:hover {
        background-color: #0056b3;
        border: 1px solid #0056b3;
    }
    .custom-update-button,
    .custom-delete-button {
        background-color: #DA70D6 /* Change this color to your desired color */
    }

    .custom-update-button:hover,
    .custom-delete-button:hover {
        background-color: #F33A6A; /* Change this color for the hover state */
    }
    .success-message {
        background-color: #4CAF50;
        color: white;
        text-align: center;
        padding: 10px;
    }
    .success-message {
        background-color: #4CAF50;
        color: white;
        text-align: center;
        padding: 10px;
    }

    .blink {
        animation: blink 1s infinite;
    }

    @keyframes blink {
        0% {
            opacity: 1;
        }
        50% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }
    
    .alert {
    background-color: #8B0000;
    color: white;
    padding: 10px;
    border-radius: 4px;
    text-align: center;
}
.blink {
    animation: blink 1s infinite;
}

@keyframes blink {
    0%, 50% {
        opacity: 1;
    }
    51%, 100% {
        opacity: 0;
    }
}
    
    
    </style>
    
    
    <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
    
</head>

<body>

<%@ include file="adminnavbar.jsp" %>

<h3 align=center><u>View All Books</u></h3>

<br>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Product Name">

<%-- Check if the "message" parameter is present in the URL and display it --%>
<c:if test="${not empty param.message}">
    <div class="success-message blink">
        <p>${param.message}</p>
    </div>
</c:if>

<c:if test="${not empty message}">
    <div class="alert alert-success blink">${message}</div>
</c:if>

<table align=center border=2 id="myTable">

<tr class="header">

<th>ID</th>
<th>Category</th>
<th>Name</th>
<th>Description</th>
<th>Cost</th>
<th>Quantity</th>
<th>Link</th>
<th>Image</th>
<th>Update</th>
<th>Delete</th>
</tr>

<c:forEach items="${productlist}" var="product">

<tr>

<td> <c:out value="${product.id}"></c:out>  </td>
<td> <c:out value="${product.category}"></c:out>   </td>
<td> <c:out value="${product.bookname}"></c:out>   </td>
<td> <c:out value="${product.description}"></c:out>   </td>
<td> <c:out value="${product.cost}"></c:out>   </td>
<td> <c:out value="${product.quantity}"></c:out>   </td>
<td> 

<a href='<c:url value='${product.productlink}'></c:url>'>Click Here</a>&nbsp;&nbsp;

</td>

<td> 

<img src='displayprodimage?id=${product.id}' width="20%" height="20%"> 


</td>
<td>
    <a href="updatebookdetails/${product.id}" class="update-button custom-update-button">Update</a>&nbsp;&nbsp;
</td>

 <td> <a href='<c:url value="delete/${product.id}"></c:url>'  class="update-button custom-update-button">Delete</a>&nbsp;&nbsp; </td>


</tr>

</c:forEach>

</table>

    
</body>

</html>
