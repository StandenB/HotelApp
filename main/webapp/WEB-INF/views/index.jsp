<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Hotel Application</title>
</head>
<body>
	<main class="container">
<h1>Arizona Hotel Connections</h1>
<h2>Find your ideal Arizona hotel by city</h2>
<br>
<p>Select a city from below to get started</p>
<br>
	<form action="/results">
		<div class="form-group row">
			<label for="city" class="col-sm-2 col-form-label">Destination:</label>
			<div class="col-sm-10">
				<select class="race" name="city">
					<option value="" selected disabled hidden>Please select</option>
				    <option value="Phoenix">Phoenix</option>
				    <option value="Tempe">Tempe</option>
				    <option value="Tuscon">Tuscon</option>
				</select>
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Select</button>
	</form>
	</main>
</body>
</html>