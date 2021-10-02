<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
<body class="bg-light">
	<!-- navbar start-->
	<nav class="navbar navbar-light fixed-top bg-light shadow-sm">
		<div class="container-lg">
			<a class="navbar-brand text-danger fw-bold fs-4"
				href="/springMvcCRUD/"> Alberto</a>
			<div class="dropdown">
				<button class="btn btn-secondary btn-danger px-3" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false">+</button>
				<ul class="dropdown-menu  dropdown-menu-end"
					aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="/springMvcCRUD/">Home</a></li>
					<li><a class="dropdown-item" href="addPerson">Add Person</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<!-- vavbar end-->
	<section>
		<div class="container pt-5">
			<div class="row">
				<div class="col-12 ">
					<a class="btn btn-dark mt-4" href="addPerson">Add New Person</a>
					<h1 class="mt-4  text-center">People List</h1>
					<div class="table-responsive">
						<table class="table table-light table-striped align-middle">
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Email</th>
								<th>Nationality</th>
								<th>Edit</th>
								<th>Delete</th>
							</tr>
							<c:forEach var="person" items="${list}">
								<tr>
									<td>${person.id}</td>
									<td>${person.name}</td>
									<td>${person.email}</td>
									<td>${person.nationality}</td>
									<td><a class="btn btn-success"
										href="editPerson/${person.id}">Edit</a></td>
									<td><a class="btn btn-danger"
										href="deletePerson/${person.id}">Delete</a></td>

								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>

		</div>

	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>
