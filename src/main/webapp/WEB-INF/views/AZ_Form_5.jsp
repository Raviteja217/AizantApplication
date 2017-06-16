<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_5</title>
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
	<br>

	<div class="small">
		<b>b)</b>&emsp;&emsp;<b><u>Test for urine hCG (Applicable for
				female subjects only)</u></b> <br>

	</div>
	<br>
	<br>


	<table style="width: 100%">
		<tr>
			<td>Urine hCG Test Strip - Make & Batch No.</td>
			<td>Date of Expiry</td>
			<td>Start Time</td>
			<td>Read Time</td>
			<td>Results (N/P)*</td>
			<td>Performed by (Sign & Date)</td>
			<td>Verified by(sign&date)</td>

		</tr>
		<tr>
			<td><input type="text" ng-model=""></td>
			<td><input type="date" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="text" ng-model=""></td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>

		</tr>
	</table>
	<span>*N- Negative</span> &emsp;&emsp;&emsp;
	<span>P-Positive</span>
	<br>
	<br>
	<b>ii) </b> &emsp;&emsp;
	<b><u>End of the study**</u></b>
	<br>
	<br>
	<table style="width: 100%">
		<tr>
		<tr>
			<td>Urine sample collected for hCG test</td>
			<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
			<td><table style="width: 100%">
					<tr>
						<td>date</td>
						<td>time</td>
					</tr>
					<tr>
						<td><input type="date" ng-model=""></td>
						<td><input type="time" ng-model=""></td>
					</tr>
				</table></td>
		</tr>

	</table>
	<br>
	<b>a)</b>&emsp;&emsp;
	<b><u>Test for urine hCG (Applicable for female subjects only)</u></b>
	<br>
	<br>
	<div id="border">
		<table style="width: 100%">
			<tr>
				<td>Urine hCG Test Strip - Make & Batch No.</td>
				<td>Date of Expiry</td>
				<td>Start Time</td>
				<td>Read Time</td>
				<td>Results (N/P)*</td>
				<td>Performed by (Sign & Date)</td>
				<td>Verified by(sign&date)</td>

			</tr>
			<tr>
				<td><input type="text" ng-model=""></td>
				<td><input type="date" ng-model=""></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model=""></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
				<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>

			</tr>
		</table>
		<span>*N- Negative</span> &emsp;&emsp;&emsp; <span>P-Positive</span> <br>
		<P>** Applicable for period-2</P>

	</div>

	<br>
	<br>
	<br>
	<footer>
	
		<div align="right">
			<br> &emsp;Reviewed by : <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a>
			<br> &emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 4 of 15</div>
	</footer>
</div>
<div align="center">
	<a href="Form4" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp; <!-- <a
			href="Form6" class="btn btn-primary">NEXT</a> -->
	</div>
	</div>
</body>
</html>