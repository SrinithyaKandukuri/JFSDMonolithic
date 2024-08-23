<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        .statistics-container {
            display: flex; /* Use flexbox to arrange boxes side by side */
            justify-content: space-around; /* Space them evenly */
            margin-top: 50px;
            animation: fallIn 1.5s ease-in-out;
        }
        
        @keyframes fallIn {
            0% {
                transform: translateY(-200px);
            }
            100% {
                transform: translateY(0);
            }
        }

        .statistics-box:hover {
            transform: scale(1.1); /* Zoom out the card */
            background-color: #e7c798; /* Change the background color */
        }

        .statistics-box {
            flex: 1;
            max-width: 300px;
            background-color: #cad9db;
            padding: 20px;
            margin: 10px;
            box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
            text-align: center;
            color: #0a0808;
            border-radius: 10px;
        }

        .statistics-box h3 {
            font-size: 24px; /* Reduce the font size for the heading */
            margin-bottom: 10px; /* Reduce the margin for the heading */
        }

        .statistics-box p {
            font-size: 36px; /* Increase the font size for the numbers */
            margin: 0;
            color: #008000; /* Green color for the number values */
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    
    <div class="statistics-container">

        <div class="statistics-box">
            <h3>Total Customers</h3>
            <p id="anotherStatCount">${ccount}</p>
        </div>
    </div>
    <div class="statistics-container">

        <div class="statistics-box">
            <h3>Total Books</h3>
            <p id="anotherStatCount">${bcount}</p>
        </div>
    </div>
     <div class="statistics-container">

        <div class="statistics-box">
            <h3>Total Sellers</h3>
            <p id="anotherStatCount">${scount}</p>
        </div>
    </div>
</body>
</html>