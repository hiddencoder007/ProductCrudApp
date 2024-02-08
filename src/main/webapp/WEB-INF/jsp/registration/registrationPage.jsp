<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="../base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/registration.css?version=2">
<title>Registration Page</title>
</head>
<body>
	<section class="h-100 bg-dark">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col">
					<div class="card card-registration my-4">
						<div class="row g-0">
							<div class="col-xl-6 d-none d-xl-block">
								<img src="${pageContext.request.contextPath}/resources/media/signUp.jpg"
									alt="Sample photo" class="img-fluid" style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem; height: 100%;;" />
							</div>

							<div class="col-xl-6">
								<div class="card-body p-md-5 text-black">
									<h3 class="mb-5 text-uppercase">Registration</h3>
									
									<c:if test="${not empty message}">
										<div class="alert alert-success" role="alert">${message}</div>
									</c:if>
									
									<c:if test="${not empty error}">
										<div class="alert alert-danger" role="alert">${error}</div>
									</c:if>
									
									<form action="<%=request.getContextPath()%>/reg/user" method="post" id="register-form" modelAttribute="save_user">
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="first_name" name="firstName" class="form-control form-control-lg" />
													<label class="form-label" for="form3Example1m">First name <span class="req">*</span></label>
													<span id="firstNameError" class="error"></span>
												</div>
											</div>

											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="text" id="last_name" name="lastName"	class="form-control form-control-lg" />
													<label class="form-label" for="form3Example1n">Last name <span class="req">*</span></label>
													<span id="lastNameError" class="error"></span>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="email" id="email" name="email" class="form-control form-control-lg" />
													<label class="form-label" for="form3Example1m1">Email <span class="req">*</span></label>
													<span id="email" class="error"></span>
												</div>
											</div>
											
											<div class="col-md-6 mb-4">
												<div class="form-outline">
													<input type="password" id="password" name="password"	class="form-control form-control-lg" />
													<label class="form-label" for="form3Example1n1">Password <span class="req">*</span></label>
													<span id="passwordError" class="error"></span>
												</div>
											</div>
										</div>

										<div class="form-outline mb-4">
											<input type="text" id="address" name="address" class="form-control form-control-lg" />
											<label class="form-label" for="form3Example8">Address <span class="req">*</span></label>
											<span id="addressError" class="error"></span>
										</div>

										<div
											class="d-md-flex justify-content-start align-items-center mb-4 py-2">

											<h6 class="mb-0 me-4">Gender: <span class="req">*</span></h6>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender" id="femaleGender" value="female" />
												<label class="form-check-label" for="femaleGender">Female</label>
											</div>

											<div class="form-check form-check-inline mb-0 me-4">
												<input class="form-check-input" type="radio" name="gender" id="maleGender" value="male" checked="checked"/>
												<label class="form-check-label" for="maleGender">Male</label>
											</div>

											<div class="form-check form-check-inline mb-0">
												<input class="form-check-input" type="radio" name="gender" id="otherGender" value="other" />
												<label class="form-check-label" for="otherGender">Other</label>
											</div>
											<span id="genderError" class="error"></span>
										</div>

										<div class="row">
											<div class="col-md-6 mb-4">
												<label class="form-label" for="form3Example90">Country <span class="req">*</span></label>
												<select class="select" name="country" id="country">
													<option value="">Select Country</option>	
													<option value="India" label="India">												
												</select>
												<span id="countryError" class="error"></span>
											</div>
											
											<div class="col-md-6 mb-4">
												<label class="form-label" for="form3Example90">State <span class="req">*</span></label>
												<select class="select" name="state" id="state">
													<option value="">Select State</option>
													<option value="Rajasthan" label="Rajasthan">													
												</select>
												<span id="stateError" class="error"></span>
											</div>
											
											<div class="col-md-6 mb-4">
												<label class="form-label" for="form3Example90">City <span class="req">*</span></label>
												<select class="select" name="city" id="city">
													<option value="">Select City</option>
													<option value="Jaipur" label="Jaipur">
													<option value="Ajmer" label="Ajmer">
													<option value="Jodhpur" label="Jodhpur">
													<option value="Sawai Madhopur" label="Sawai Madhopur">
													<option value="Udaipur" label="Udaipur">														
												</select>
												<span id="cityError" class="error"></span>
											</div>
										</div>										

										<div class="form-outline mb-4">
											<input type="text" id="pincode" name="pincode" class="form-control form-control-lg" />
											<label class="form-label" for="form3Example90">Pincode <span class="req">*</span></label>
											<span id="pincodeError" class="error"></span>
										</div>										
										<div class="d-flex justify-content-end pt-3">
											<button type="reset" class="btn btn-outline-primary ">Reset</button>											
											<button type="submit" class="btn btn-outline-success btn-lg ms-2">Register</button>
											<a href="<%=request.getContextPath()%>/login" class="btn btn-outline-danger btn-lg ms-2">Back</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/registration.js?v=3"></script>
</html>