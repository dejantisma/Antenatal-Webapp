<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<body>

	<div class="container">


		<h3 class="display-4">Search Patient</h3>

		<form action="./searchPatient" method="GET">


			<div class="form-group">
				<label for="firstName">First name</label> <input type="text"
					class="form-control" name="firstName" id="firstName"
					placeholder="John">
			</div>

			<div class="form-group">
				<label for="lastName">Last name</label> <input type="text"
					class="form-control" name="lastName" id="lastName"
					placeholder="Doe">
			</div>

			<div class="form-group">
				<label for="nhis">NHIS Number</label> <input type="text"
					class="form-control" name="nhis" id="nhis" placeholder="1234567">
			</div>

			<p>Patient not found, please try again.</p>

			<button type="submit" class="btn btn-primary">Submit</button>







		</form>

	</div>

</body>


</html>