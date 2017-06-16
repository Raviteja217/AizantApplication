<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_12</title>
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

#yn {
	margin-right: 3cm;
	margin-left: 3cm;
}

#box {
	width: 320px;
	padding: 10px;
	border: 3px solid gray;
	margin-right: 5cm;
	margin-left: 5cm;
	margin-top: 1cm;
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
		<b><u>N. SAFETY SAMPLE COLLECTION</u></b> <span><strong>(Applicable
				for period-1 check-out):</strong></span> <br> <br>
		<table style="width: 100%">
			<tr>
			<tr>
				<td>Blood sample collected (05 mL)</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
				<td><table style="width: 100%">
						<tr>
							<td>date</td>
							<td>time</td>
							<td>Collected by<br>(Sign&Date)
							</td>
						</tr>
						<tr>
							<td><input type="date" ng-model=""></td>
							<td><input type="time" ng-model=""></td>
							<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
						</tr>
					</table></td>
			</tr>

		</table>
		<br> <b><u>CHECK-OUT ECG</u></b> <span><strong>(Applicable
				for period-2 only):</strong></span> <br> <br>
		<table style="width: 100%">
			<tr>
				<td>Time</td>
				<td>Date</td>
				<td>ECG Recorded</td>
				<td>Recorded by (Sign&Date)</td>
			</tr>
			<tr>
				<td><input type="time" ng-model=""></td>
				<td><input type="date" ng-model=""></td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>
						<option value="N/A">N/A</option></select></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
		</table>
		<br> Note:
		<ul>
			<li>Note: ECG will be recorded before check out of the last
				period (check out ECG can be recorded prior to the last sample
				collection/ check out medical examination or as per physician
				discretion).</li>
		</ul>

		<footer>
		<div align="right">

			<br> &emsp;Reviewed by :<input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 11 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form11" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form13" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>