<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

<meta charset="ISO-8859-1">
<title>AZ_FORM_2</title>
<style>
.allbody {
	border-style: double;
	margin: 30px;
}

#leftContainer {
	float: left;
}

#rightContainer {
	float: right;
}

#centerContainer {
	float: center;
}

#border {
	margin: 5px;
	padding: 5px;
	border-style: ridge;
}

.small {
	line-height: 80%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}

th {
	text-align: left;
}

.half {
	width: 50%;
	border: 1px solid red;
	float: left;
	display: inline;
}
</style>
</head>
<body>
	<div class="allbody">
		<div>
			<img src="http://allianceinstitute.org/placementlogos/aizant.jpg"
				alt="Aizant" align="right">
		</div>
		<br> <br> <br> <br> <br>
		<div id="leftContainer">
			<span>Form No.: CPF070/02</span>
		</div>
		<div id="rightContainer">
			<span>Reference SOP No.: CP079</span>
		</div>
		<br>

		<hr>
		<center>
			<h2>
				<u>CASE REPORT FORM</u>
			</h2>
		</center>
		<br>
		<div id="container" style="width: 100%;">
			<div id="left" style="float: left; width: 35%;">
				<b>CRF No.</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;<input type="text">${mainReport.crfNo }
			</div>
			<br> <br>

			<div id="left" style="float: left; width: 35%;">
				<b>Project No.</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 35%;">
				<b>Project Title</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;
				<textarea rows="5" cols="80"></textarea>
			</div>
			<br> <br> <br> <br>
		</div>
		<hr color="#ffffff">
		<div id="container" style="width: 100%;">
			<div id="left" style="float: left; width: 35%;">
				<b>Protocol No.</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 35%;">
				<b>Protocol Version</b>
			</div>
			<div id="right" style="float: right; width: 65%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
		</div>
		<hr color="#000">
		<div id="container" style="width: 100%;">
			<div id="left" style="float: left; width: 40%;">
				<b>Period</b>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;">
				<b>Registration No.</b>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="text" ng-model="" value="R">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;">
				<b>Subject No.</b>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="text" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;">
				<b>Date and Time of Reporting</b>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="date" ng-model=""><b>:</b>
				&emsp;<input type="time" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;">
				<b>Date and Time of Check in</b>
				<!-- 			<p style="font-size: 10px;">(Clinical ward)</p> -->
				<br>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="date" ng-model=""><b>:</b>
				&emsp;<input type="time" ng-model="">
			</div>
			<br> <br>
			<div id="left" style="float: left; width: 40%;" align="left">
				<b>Date and Time of Check in</b>
				<p style="font-size: 10px;">(Clinical ward)</p>
			</div>
			<div id="right" style="float: right; width: 60%;">
				<b>:</b> &emsp;<input type="date" ng-model=""><b>:</b>
				&emsp;<input type="time" ng-model="">
			</div>
			<br> <br> <br>
			<table style="width: 100%">
				<tr>
					<td></td>
					<td align="center">Prepared By</td>
					<td colspan="2" align="center">Reviewed By
						<table style="width: 100%">
							<tr>
								<td>PI</td>
								<td>QA</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr>

					<td>Name<br>Sign & Date
					</td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
					
					<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
					<td><input type="text" ng-model=""></td>
				</tr>
			</table>
		</div>
	</div>
	<div align="center">
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form3" class="btn btn-primary">NEXT</a>
	</div>

</body>
</html>