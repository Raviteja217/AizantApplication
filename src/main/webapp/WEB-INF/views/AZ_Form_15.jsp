<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_15</title>
<style>
.allbody {
	border-style: double;
	margin: 30px;
}

#leftContainer {
	float: left;
}

#border {
	margin: 5px;
	padding: 5px;
	border-style: ridge;
}

#rightContainer {
	float: right;
}

#centerContainer {
	float: center;
}

.small {
	line-height: 80%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th {
	padding: 5px;
	text-align: center;
}

td {
	padding: 5px;
	text-align: left;
}
</style>
</head>
<body>
	<div class="allbody" ng-app="">
		<div>
			<img src="http://allianceinstitute.org/placementlogos/aizant.jpg"
				alt="Aizant" align="right">
		</div>
		<%-- <div id="container" style="width: 100%;">
			<div id="right" style="float: right; width: 85%;">
				<img src="<c:url value="/resources/images/Aizant.png" />"
					alt="Aizant" align="right">
			</div> --%>

		<br> <br> <br> <br> <br>
		<div id="leftContainer">
			<span>Form No.: CPF070/02</span>
		</div>
		<div id="rightContainer">
			<span>Reference SOP No.: CP079</span>
		</div>
		<br>

		<hr>

		<div id="container" style="width: 100%;">
			<div id="leftContainer">CRF No. :</div>
			<div align="center" style="width: 67%">Project No.:</div>
			<br>

			<div id="left" style="float: left; width: 33%;">
				Registration No.: &emsp;<input type="text" ng-model="">
			</div>
			<div id="left" style="float: left; width: 33%;">
				Period No.: &emsp;<input type="text" ng-model="">
			</div>
			<div align="right" style="float: right; width: 33%;">
				Subject No.: &emsp;<input type="text" ng-model="">
			</div>
		</div>

		<br>

		<hr>
		<br> <b>S. <u>SAFETY MONITORING (Applicable for
				period-1):</u></b>
		<table style="width: 100%">
			<tr>

				<th colspan="4">Liver function tests</th>
			</tr>
			<tr>
				<th>Parameter</th>
				<th>Normal</th>
				<th>Abnormal</th>
				<th>Comments</th>
			</tr>
			<tr>
				<td>Total Bilirubin</td>
				<td><input type="checkbox" ng-model=" " value="Normal"></td>
				<td><input type="checkbox" ng-model=" " value="Abnormal"></td>
				<td><textarea rows="1" cols="30" style="width: 98%"></textarea></td>
			</tr>
			<tr>
				<td>SGOT</td>
				<td><input type="checkbox" ng-model=" " value="Normal"></td>
				<td><input type="checkbox" ng-model=" " value="Abnormal"></td>
				<td><textarea rows="1" cols="30" style="width: 98%"></textarea></td>
			</tr>
			<tr>
				<td>SGPT</td>
				<td><input type="checkbox" ng-model=" " value="Normal"></td>
				<td><input type="checkbox" ng-model=" " value="Abnormal"></td>
				<td><textarea rows="1" cols="30" style="width: 98%"></textarea></td>
			</tr>
			<tr>
				<td>Alkaline phosphate</td>
				<td><input type="checkbox" ng-model=" " value="Normal"></td>
				<td><input type="checkbox" ng-model=" " value="Abnormal"></td>
				<td><textarea rows="1" cols="30" style="width: 98%"></textarea></td>
			</tr>
		</table>
		<br> <br>
		<table style="width: 100%">
			<tr>

				<th colspan="4">Renal function tests</th>
			</tr>
			<tr>
				<th>Parameter</th>
				<th>Normal</th>
				<th>Abnormal</th>
				<th>Comments</th>
			</tr>
			<tr>
				<td>Blood Urea</td>
				<td><input type="checkbox" ng-model=" " value="Normal"></td>
				<td><input type="checkbox" ng-model=" " value="Abnormal"></td>
				<td><textarea rows="1" cols="30" style="width: 98%"></textarea></td>
			</tr>
			<tr>
				<td>Serum creatinine</td>
				<td><input type="checkbox" ng-model=" " value="Normal"></td>
				<td><input type="checkbox" ng-model=" " value="Abnormal"></td>
				<td><textarea rows="1" cols="30" style="width: 98%"></textarea></td>
			</tr>

		</table>
		<br>
		<p>Comments</p>
		<textarea rows="3" cols="175"></textarea>
		<br> <br> <br>
		<footer>
		<div align="right">

			<br> &emsp;Reviewed by : <input type="text" ng-model="pin"
				placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 14 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form14" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form16" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>