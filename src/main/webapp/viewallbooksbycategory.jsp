<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>
    <style>
        <!-- Your CSS styles here -->
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

    <h3 align="center"><u>View All Books By Category</u></h3>

    <br>

    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Product Name">

    <table align="center" border="2" id="myTable">

        <tr class="header">
            <th>ID</th>
            <th>Category</th>
            <th>Name</th>
            <th>Description</th>
            <th>Cost</th>
            <th>Quantity</th>
            <th>Link</th>
            <th>Image</th>
        </tr>

        <c:forEach items="${productlist}" var="product">
            <tr>
                <td> <c:out value="${product.id}"></c:out> </td>
                <td>
                    <!-- Generate URL with category parameter -->
                    <a href='<c:url value="viewallbooksbycategory">value="${product.category}"/></c:url>'>
                        <c:out value="${product.category}"></c:out>
                    </a>
                </td>
                <td> <c:out value="${product.bookname}"></c:out> </td>
                <td> <c:out value="${product.description}"></c:out> </td>
                <td> <c:out value="${product.cost}"></c:out> </td>
                <td> <c:out value="${product.quantity}"></c:out> </td>
                <td>
                    <a href='<c:url value="${product.productlink}"></c:url>'>Click Here</a>&nbsp;&nbsp;
                </td>
                <td>
                    <img src='displayprodimage?id=${product.id}' width="20%" height="20%">
                </td>
            </tr>
        </c:forEach>

    </table>
</body>

</html>
