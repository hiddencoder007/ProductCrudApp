<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3 text-primary">Fill The Product Details</h1>
				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="productName"
							aria-describedby="emailHelp" name="productName"
							placeholder="Enter the product name here" required>
					</div>
					<div class="form-group">
						<label for="productDesc">Product Description</label>
						<textarea rows="5" class="form-control" name="productDesc"
							id="productDesc" placeholder="Enter the product description" required></textarea>
					</div>
					<div class="form-group">
						<label for="exampleCheck1">Product Price</label> <input
							type="text" class="form-control" id="productPrice"
							name="productPrice" placeholder="Enter Product Price" required>
					</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>