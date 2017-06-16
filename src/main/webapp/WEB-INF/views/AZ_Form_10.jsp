<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_10</title>
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
		<br> <b><u>L. DOSING RECORD # </u></b> <br>
		<p>
			Subject identity verified with the ID card:&emsp;&emsp; &emsp;&emsp;
			<select>
				<option value="YES">YES</option>
				<option value="NO">NO</option>
			</select><br>
		<table style="width: 100%">
			<tr>
				<td>Date</td>
				<td>Scheduled Time</td>
				<td>Actual Time</td>
				<td>Deviation</td>
				<td>Mouth check done</td>


			</tr>
			<tr>
				<td><input type="date"></td>
				<td><input type="time"></td>
				<td><input type="time"></td>
				<td><input type="checkbox">Yes <input type="checkbox">Yes<br>
					______________________<br> If Yes, Deviation <br>time in
					minutes:<input type="time" ng-model=""></td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>
				</select></td>
			</tr>
		</table>
		<br> <i># Capture the subject signature in 'ACTIVITY
			CONFIRMATION RECORD BY SUBJECTS'</i>
		<p>
			Dosing Solution: <strong><u>WATER</u></strong>&emsp;&emsp;
			&emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp; &emsp;&emsp;
			Quantity: <strong><u>240 mL</strong></u> <br> <br>Is the
			Subject swallowed the IP(s) with the specified quantity of dosing
			solution?
		</p>
		<div id="yn" align="right">
			<select>
				<option value="YES">YES</option>
				<option value="NO">NO</option>
			</select>
		</div>
		<div id="box" align="center">
			<strong>PASTE DISPENSING LABEL <br>HERE
			</strong>
		</div>
		<p>Comments:</p>
		<textarea rows="5" cols="175">
</textarea>
		<br> <br>
		<table style="width: 100%">
			<tr>
				<td>Administered by<br> (Sign&Date)
				</td>
				<td>Supervised by<br> (Sign&Date)
				</td>
				<td>Verified by<br> (Sign&Date)
				</td>
			</tr>
			<tr>
				<td><input type="text" ng-model="pin"
					placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
				<td><input type="text" ng-model="pin"
					placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
				<td><input type="text" ng-model="pin"
					placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
		</table>
		<footer>
		<div align="right">

			<br> &emsp;Reviewed by : <input type="text" ng-model="pin"
				placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 9 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form9" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form11" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>