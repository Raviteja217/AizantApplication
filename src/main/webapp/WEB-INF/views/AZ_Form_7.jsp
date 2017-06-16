<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_7</title>
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
		<br> <b>H. <u>CHECK-IN DETAILS:#</u></b>
		<table style="width: 100%">
			<tr>
				<td>Subject No. allotted:</td>
				<td>&emsp;&emsp;&emsp;__________________&emsp;&emsp;&emsp;</td>
			</tr>
			<tr>
				<td>Locker key issued & Locker number:</td>
				<td>&emsp;&emsp;&emsp;__________________&emsp;&emsp;&emsp;</td>
			</tr>
			<tr>
				<td>Baggage check</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
			</tr>
			<tr>
				<td>Body search done</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
			</tr>
			<tr>
				<td>Utility kit & Uniform issued</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
			</tr>
			<tr>
				<td>Subject ID card issued</td>
				<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
			</tr>
		</table>
		<br> <i># Capture the subject signature in 'ACTIVITY
			CONFIRMATION RECORD BY SUBJECTS'</i> <br> <br>
		<p>
			Check-in time *: &emsp;&emsp;<input type="time" ng-model=" ">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Recorded
			by: <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a>
		</p>
		<br>
		<p>* Record the check-in date and time also on cover page of CRF.</p>
		<br> <br> <br>
		<footer>
		<div align="right">

			<br> &emsp;Reviewed by : <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 6 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form6" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form8" class="btn btn-primary">NEXT</a>
	</div>
	
</body>
</html>