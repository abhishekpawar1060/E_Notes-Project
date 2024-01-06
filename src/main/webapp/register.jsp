<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%@include file="all_component/navbar.jsp" %>

	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>


					<%
					String regMsg = (String) session.getAttribute("reg-sucess");

					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>
						Login<a href="login.jsp"> Click here</a>
					</div>

					<%
					session.removeAttribute("reg-sucess");
					}
					%>



					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");

					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=FailedMsg%></div>
					<%
					session.removeAttribute("failed-msg");

					}
					%>


					<div class="card-body">

						<form action="UserServlet" method="post">

							<div class="form-group">
								<label>Enter Your Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">

							</div>

							<div class="form-group">
								<label>Enter Your Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>

					</div>
				</div>

			</div>
		</div>

	</div>

	<div class="container-fluid bg-dark mt-1">
		<p class="text-center text-white">Note: Any Error occur then
			Contact mgmucse@ac.in. Designed and Developed By CSEDepartment</p>

		<p class="text-center text-white">All Right Reserved
			@MGMUJNEC-2023</p>
	</div>
</body>
</html>