<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Search Results Page</title>
</head>
<body>
<main class="container">
<a href="/">New Search</a><br>
<h1>Arizona Hotel Connections</h1><br>
<h3>Your Search Results:</h3>
<table class="table">
			<thead>
				<tr>
					<th>Property</th><th>City</th><th>Nightly Rate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="hotel" items="${ hotels }">
					<tr>
						<td>${ hotel.name }</td>
						<td>${ hotel.city }</td>
						<td>$${ hotel.pricePerNight }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</main>
</body>
</html>