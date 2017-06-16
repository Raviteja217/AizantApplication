<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_11</title>
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
	border-style: ridge;
}

th, td {
	padding: 5px;
}

th {
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
		<br> <b>M. <u>SUBJECT COMPLIANCE REPORT</u></b> <br> <br>
		<table style="border-style: ridge">
			<tr>
				<th>Study restrictions</th>
				<th>Complied</th>
				<th>Not complied</th>
				<th>Recorded by (Sign & Date)</th>
			</tr>
			<tr>
				<td>Housing for at least 10.50 hours prior to dosing.</td>
				<td><input type="checkbox" ng-model=" " value="Complied"></td>
				<td><input type="checkbox" ng-model=" " value="Not_complied"></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td>Fasting for at least 10.00 hours prior to dosing.</td>
					<td><input type="checkbox" ng-model=" " value="Complied"></td>
				<td><input type="checkbox" ng-model=" " value="Not_complied"></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td>Water restriction for 01 hour before dosing</td>
				<td><input type="checkbox" ng-model=" " value="Complied"></td>
				<td><input type="checkbox" ng-model=" " value="Not_complied"></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td>Water restriction for 01 hour after dosing</td>
			<td><input type="checkbox" ng-model=" " value="Complied"></td>
				<td><input type="checkbox" ng-model=" " value="Not_complied"></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td>Subject remained in semi recumbent position for the first
					4.00 following drug administration except medical examination and/
					or clinically indicated/for natural exigency.</td>
				<td><input type="checkbox" ng-model=" " value="Complied"></td>
				<td><input type="checkbox" ng-model=" " value="Not_complied"></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td>Fasting for at least 4.00 hours after dosing</td>
				<td><input type="checkbox" ng-model=" " value="Complied"></td>
				<td><input type="checkbox" ng-model=" " value="Not_complied"></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td>Housing for at least 24.00 hours after dosing</td>
				<td><input type="checkbox" ng-model=" " value="Complied"></td>
				<td><input type="checkbox" ng-model=" " value="Not_complied"></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
		</table>
		<br> <br>

		<p>&emsp;Comments :</p>

		&emsp;<textarea rows="5" cols="175"></textarea>
		<br> <br>
		<footer>
		<div align="right">

			<br> &emsp;Reviewed by : <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 10 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form10" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form12" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>