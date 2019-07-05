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
		<title>Dojo Survey Index</title>
	</head>
	<body>
		<div class="container">
			<div class="row m-3 p-3 justify-content-center">
				<div class="col-8 m-3 p-3 bg-light border border-rounded">
					<div class="justify-content-center">
						<div class="col p-4 bg-white border border-rounded">
							<form method="POST" action="/results">
								<div class="row justify-content-start">
									<div class="col-6">
										<label for="name">Your Name:</label>
										<p class="text-danger"><c:out value="${nameError}" /></p>
									</div>
									<div class="col-6">
										<input type="text" name="name" class="w-100">
									</div>
								</div>
								<div class="row justify-content-start">
									<div class="col-6">
										<label for="location">Dojo Location:</label>
									</div>
									<div class="col-6">
										<select name="location" class="w-100">
											<option value="San Jose">San Jose</option>
											<option value="Burbank">Burbank</option>
											<option value="Seattle">Seattle</option>
											<option value="McLean">McLean</option>
										</select>
									</div>
								</div>
								<div class="row justify-content-start">
									<div class="col-6">
										<label for="language">Favorite Language:</label>
									</div>
									<div class="col-6">
										<select name="language" class="w-100">
											<option value="JavaScript">JavaScript</option>
											<option value="Python">Python</option>
											<option value="C#">C#</option>
											<option value="Java">Java</option>
										</select>
									</div>
								</div>
								<div class="row justify-content-start">
									<div class="col-6">
										<label for="comment">Comment (optional):</label>
									</div>
								</div>
								<div class="row justify-content-start">
									<div class="col">
										<textarea name="comment" class="w-100" rows="5"></textarea>
									</div>
								</div>
								<div class="row justify-content-end">
									<div class="col-2">
										<input type="submit" class="btn btn-secondary text-right">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>	
			</div>
		</div>
	</body>
</html>