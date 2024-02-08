<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored = "false" %>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<title>INDEX</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center text-primary">Welcome To Product Application</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products }" var="p">
						<tr>
							<th scope="row">${p.id}</th>
							<td>${p.productName }</td>
							<td>${p.productDesc }</td>
							<td class="font-weight-bold">&#x20B9; ${p.productPrice }</td>
							<td><a href="delete/${p.id }"><i class="bi bi-trash3-fill text-danger" style="size: 30px"></i></a></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<div class="container text-center">
						<a href="add-product" class="btn btn-outline-success">Add Product</a>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>