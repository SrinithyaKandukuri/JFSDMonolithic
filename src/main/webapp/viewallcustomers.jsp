<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View ALL Customers</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet" href="css/viewallcustomers.css">
</head>
<body>
	<%@ include file="adminnavbar.jsp"%>
	<div class="body">
		<div class="container rounded mt-5 bg-white p-md-5">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Email</th>
							<th scope="col">Contact No</th>
							<th scope="col">Full Details</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customerdata}" var="cus">
							<tr class="bg-blue">
								<td class="pt-3"><c:out value="${cus.id}" /></td>
								<td class="pt-2">
									<div class="pl-lg-5 pl-md-3 pl-1 name">
										<c:out value="${cus.name}" />
									</div>
								</td>
								<td class="pt-3 mt-1"><c:out value="${cus.gender}" /></td>
								<td class="pt-3"><c:out value="${cus.email}" /></td>
								<td class="pt-3"><c:out value="${cus.contactno}" /></td>
								<td><a href='<c:url value="view?id=${cus.id}"></c:url>'>View</a>
								</td>
							</tr>
							<tr id="spacing-row">
								<td></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
