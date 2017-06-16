<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_8</title>
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
	<b><u>Day 0 (Admission day)</u></b>
	<br>
	<br>
	<table style="width: 100%">
		<tr>
			<td>.</td>
			<th>Start Time</th>
			<th>Finish Time</th>
			<th>Consumption(full / more than half / less than half /any
				other)</th>
			<th>Recorded by (sign&date)</th>
			<th>Comments</th>

		</tr>
		<tr>
			<td><strong>Dinner (After check-in)</strong><br>
				</h5> To be completed at least 10.00 hours prior to dosing</td>
			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="text" ng-model=""></td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			<td><textarea rows="2" cols="15"></textarea></td>



		</tr>
	</table>
	<br>
	<b><u>Day 1 (Dosing day)</u></b>
	<br>
	<br>
	<table style="width: 100%">
		<tr>
			<td>.</td>
			<th>Scheduled time</th>
			<th>Start Time</th>
			<th>Finish Time</th>
			<th>Consumption(full / more than half / less than half /any
				other)</th>
			<th>Recorded by (sign&date)</th>
			<th>Comments</th>

		</tr>
		<tr>
			<td><strong>Lunch</strong><br> 04 hours after drug
				administration</td>
			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="text" ng-model=""></td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			<td><textarea rows="2" cols="15"></textarea></td>

		</tr>
		<tr>
			<td><strong>Snacks</strong><br> 08 hours after drug
				administration</td>
			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="text" ng-model=""></td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			<td><textarea rows="2" cols="15"></textarea></td>

		</tr>
		<tr>
			<td><strong>Dinner</strong><br>12 hours after drug
				administration</td>
			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="text" ng-model=""></td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			<td><textarea rows="2" cols="15"></textarea></td>

		</tr>

	</table>
	<br>
	<b><u>Day 2 (Check out day)</u></b>
	<br>
	<br>
	<table style="width: 100%">
		<tr>
			<td>.</td>
			<th>Start Time</th>
			<th>Finish Time</th>
			<th>Consumption(full / more than half / less than half /any
				other)</th>
			<th>Recorded by (sign&date)</th>
			<th>Comments</th>

		</tr>
		<tr>
			<td><strong>Breakfast</strong><br>
				</h5> Before check out</td>

			<td><input type="time" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="text" ng-model=""></td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			<td><textarea rows="2" cols="15"></textarea></td>

		</tr>
	</table>
	<strong><p>Note:
		<ul>
			<li>Standard meals or snacks are served with a grace period of + 45 minutes.</li>
		</ul>
		</p></strong>
	<br>
	<br>
	<br>
	<footer>
		<div align="right">

			<br> &emsp;Reviewed by : <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 7 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form7" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form9" class="btn btn-primary">NEXT</a>
	</div>
	
</body>
</html>