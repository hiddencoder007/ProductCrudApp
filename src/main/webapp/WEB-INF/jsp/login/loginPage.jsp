<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page isELIgnored="false"%>

<%@include file="../base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>

<body>
	<section class="vh-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6 text-black">

					<div class="px-5 ms-xl-4">
						<i class="fas fa-crow fa-2x me-3 pt-5 mt-xl-4"
							style="color: #709085;"></i> <span class="h1 fw-bold mb-0">Login</span>
					</div>					

					<div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

						<form id="form-login" style="width: 23rem;" method="post" action="<%=request.getContextPath()%>/login">
							<c:if test="${not empty error}">
								<div class="alert alert-danger" role="alert">${error}</div>
							</c:if>
							
							<c:if test="${not empty message}">
								<div class="alert alert-success" role="alert">${message}</div>
							</c:if>
							
							<h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>

							<div class="form-outline mb-4">
								<input type="email" id="email" name="email"	class="form-control form-control-lg"/>
								<label class="form-label" for="form2Example18">Email address <span class="req">*</span></label>
								<span id="usernameError" class="error"></span>
							</div>

							<div class="form-outline mb-4">
								<input type="password" id="password" name="password" class="form-control form-control-lg" />
								<label class="form-label" for="form2Example28">Password <span class="req">*</span></label>
								<span id="passwordError" class="error"></span>
							</div>

							<div class="pt-1 mb-4">
								<input type="submit" id="login-btn" class="btn btn-info btn-lg btn-block" value="Submit" />
							</div>

							<p class="small mb-5 pb-lg-2">
								<a class="text-muted" href="<%=request.getContextPath()%>/forgot-password">Forgot password?</a>
							</p>
							
							<p>
								Don't have an account? <a href="<%=request.getContextPath()%>/reg" class="link-info">Register here</a>
							</p>							
						</form>

					</div>

				</div>
				<div class="col-sm-6 px-0 d-none d-sm-block">
					<img src="${pageContext.request.contextPath}/resources/media/loginPage.jpg"
						alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
				</div>
			</div>
		</div>
	</section>
</body>
</html>