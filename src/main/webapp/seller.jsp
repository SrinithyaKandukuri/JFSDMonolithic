<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8" />
<title>Seller</title>
<link rel="stylesheet" href="css/seller.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/navbar.css">
</head>
<body>
	<%@ include file="customernav.jsp"%>
	<div class="body">
		<div class="container">
			<div class="text">Seller Details</div>
			<form method="post" action="insertseller">

				<div class="form-row">
					<div class="input-data">
						<input type="text" required name="sellername">
						<label for="sellername">Sellername</label>
					</div>
					
					<div class="input-data">
						<input type="text" required name="companyname">
						<label for="companyname">Companyname</label>
					</div>
				</div>
				<div class="form-row">
					<div class="input-data">
						<input type="text" required name="email">
						<label for="email">Email</label>
					</div>
					<div class="input-data">
						<input type="text" required name="sellercontact">
						<label for="sellercontact">Sellercontact</label>
					</div>
				</div>
				<div class="form-row">
						<div class="input-data">
						<input type="text" required name="sellerid">
						<label for="sellerid">SellerId</label>
						</div>
						<div class="input-data">
							<input type="text" required name="companyid">
						<label for="companyid">CompanyId</label>
						</div>
					</div>
					<!--
				<div class="form-row">
					<div class="input-data textarea">
						<textarea rows="8" cols="80" required></textarea>
						<br />
						<div class="underline"></div>
						<label for="">Write your message</label> <br />
						 -->
						<div class="form-row submit-btn">
							<div class="input-data">
								<div class="inner"></div>
								<input type="submit" value="submit" />
							</div>
						</div>
					</div>
					
				</div>
			</form>
		</div>
		<div class="img">
			<img alt=""
				src="images/man-delivery-package-white-background_1308-46613.jpg"
				width="100%" height="90%">
		</div>
	</div>
</body>
</html>
