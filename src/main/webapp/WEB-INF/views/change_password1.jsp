<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>change password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<div id="passwordreset" style="margin-top: 50px"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Change Password</div>
				</div>
				<div class="panel-body">
					<form class="pure-form">
						<fieldset>

							<b>Current Password</b>&emsp;&emsp;&emsp;&emsp;<input type="password"
								path="password" placeholder="Current Password" id="password"
								style="width: 100%" required> <br> <br><b>New
								Password</b>&emsp;&emsp;&emsp;&emsp;<input type="password"
								path="password" placeholder="Password" id="password"
								style="width: 100%" required> <br> <br> <b>Confirm
								Password</b>&emsp;&emsp;&nbsp;<input type="password"
								placeholder="Confirm Password" id="confirm_password"
								style="width: 100%" required><br> <br>
							<button type="submit" class="btn btn-primary">Confirm</button>
							<button type="reset" class="btn btn-primary">Reset</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var password = document.getElementById("password"), confirm_password = document
				.getElementById("confirm_password");

		function validatePassword() {
			if (password.value != confirm_password.value) {
				confirm_password.setCustomValidity("Passwords Don't Match");
			} else {
				confirm_password.setCustomValidity('');
			}
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	</script>
</body>
</html>