<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE HTML>
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<body>


	<div class="container">


		<h3 class="display-4">
			<c:out value="${lastName}" />,
			<c:out value="${firstName}" />
		</h3>

		<p>
			<c:out value="${gender? gender : 'Gender'}" />
			<c:out value="${age!=null ? age : 'Age'}" />
		</p>
		<p>
			<c:out value="${address? address : 'Address'}" />
			<c:out value="${tribe ? tribe : 'Tribe'}" />
		</p>
		<table class="table table-sm">
			<tbody>
			<thead class="thead-dark">
				<tr>
					<th scope="col">Parity</th>
					<th scope="col">Height</th>
					<th scope="col">Weight</th>
				</tr>
			</thead>
			<tr>
				<td><c:out value="${parity!=null ? parity : 0}" /></td>
				<td><c:out value="${height!=null ? height : 0}" /></td>
				<td><c:out value="${weight!=null ? weight : 0}" /></td>
			</tr>
			<thead class="thead-dark">
				<tr>
					<th scope="col">Blood Group</th>
					<th scope="col">Venereal Disease Lab</th>
					<th scope="col">Gestation</th>
				</tr>
			</thead>
			<tr>
				<td><c:out value="${bloodGroup!=null ? bloodGroup : '[]'}" /></td>
				<td><c:out value="${vdl!=null ? vdl : '[]'}" /></td>
				<td><c:out value="${gestation!=null ? gestation : 0}" /></td>
			</tr>
			</tbody>
		</table>
		<hr>
		<br>

		<div>

			<p class="lead">
				<strong>Sickling</strong>
			</p>
			<div class="row">

				<div class="col-md">
					<c:out value="${status!=null ? status : 'Status'}" />
				</div>

				<div class="col-md">
					<c:out value="${type!=null ? type : 'Type'}" />
				</div>

			</div>
		</div>
		<br>


		<div class="row">
			<div class="col-md">
				<p class="lead">
					<strong>Tetanus toxoid</strong>
				</p>

				<input type="checkbox" id="TTDose1" name="TTDose1" disabled
					<c:if test="${TTDose1 == true }"> checked="checked" </c:if>>
				<label for="TTDose1">First Dose</label> <input type="checkbox"
					id="TTDose2" name="TTDose2" disabled
					<c:if test="${TTDose2 == true }"> checked="checked" </c:if>>
				<label for="TTDose2">Second Dose</label> <input type="checkbox"
					id="TTDose3" name="TTDose3" disabled
					<c:if test="${TTDose3 == true }"> checked="checked" </c:if>>
				<label for="TTDose3">Third Dose</label> <input type="checkbox"
					id="protected1" name="protected1" disabled
					<c:if test="${protected1 == true }"> checked="checked" </c:if>>
				<label for="protected1">Protected</label>

			</div>
			<br>

			<div class="col-md">

				<p class="lead">
					<strong>Intermittent preventive therapy</strong>
				</p>

				<input type="checkbox" id="IPTDose1" name="IPTDose1" disabled
					<c:if test="${IPTDose1 == true }"> checked="checked" </c:if>>
				<label for="IPTDose1">First Dose</label> <input type="checkbox"
					id="IPTDose2" name="IPTDose2" disabled
					<c:if test="${IPTDose2 == true }"> checked="checked" </c:if>>
				<label for="IPTDose2">Second Dose</label> <input type="checkbox"
					id="IPTDose3" name="IPTDose3" disabled
					<c:if test="${IPTDose3 == true }"> checked="checked" </c:if>>
				<label for="IPTDose3">Third Dose</label>

			</div>

		</div>

		<br>

		<div>
			<p class="lead">
				<strong>Prevention of mother to child transmission</strong>
			</p>

			<input type="checkbox" id="pretest" name="pretest" disabled
				<c:if test="${preTest == true }"> checked="checked" </c:if>>
			<label for="pretest">Pre-test counseling</label> <input
				type="checkbox" id="postTest" name="postTest" disabled
				<c:if test="${postTest == true }"> checked="checked" </c:if>>
			<label for="postTest">Post-test counseling</label> <input
				type="checkbox" id="positive" name="positive" disabled
				<c:if test="${positive == true }"> checked="checked" </c:if>>
			<label for="positive">Positive</label> <input type="checkbox"
				id="retroviral" name="retroviral" disabled
				<c:if test="${retroViral == true }"> checked="checked" </c:if>>
			<label for="retroviral">Anti-retroviral drugs given</label>


		</div>


	</div>




</body>
</html>
