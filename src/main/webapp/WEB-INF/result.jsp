<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- JSTL library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<!-- Twitter Bootstrap -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="container">
			<div class="row m-3 p-3 justify-content-center">
				<div class="col-8 m-3 p-3 bg-light border border-rounded">
					<div class="justify-content-center">
						<div class="col p-4 bg-white border border-rounded">
							<div class="row justify-content-start">
								<div class="col-6">
									<p class="text-left">Name:</p>
								</div>
								<div class="col-6">
									<p class="text-left"><c:out value="${name}" />
								</div>
							</div>
							<div class="row justify-content-start">
								<div class="col-6">
									<p class="text-left">Dojo Location:</p>
								</div>
								<div class="col-6">
									<p class="text-left"><c:out value="${location}" />
								</div>
							</div>
							<div class="row justify-content-start">
								<div class="col-6">
									<p class="text-left">Favorite Language:</p>
								</div>
								<div class="col-6">
									<p class="text-left"><c:out value="${language}" />
								</div>
							</div>
							<div class="row justify-content-start">
								<div class="col-6">
									<p class="text-left">Comment:</p>
								</div>
								<div class="col-6">
									<p class="text-left"><c:out value="${comment}" />
								</div>
							</div>
							<div class="row justify-content-end">
								<div class="col-2">
									<a href="/" class="btn btn-secondary text-right">Go Back</a>
								</div>
							</div>
						</div>
					</div>
				</div>	
			</div>
		</div>
	</body>
</html>