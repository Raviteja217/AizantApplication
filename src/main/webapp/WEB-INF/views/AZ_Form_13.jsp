<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_13</title>
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
	<br>
	<b><u>G. MEDICAL EXAMINATION (CHECK-IN) : </u></b>
	<br>
	<br> Start Time:
	<input type="time" ng-model=" " />
	<br>
	<br>

	<div id="border">
		<table style="width: 100%">
			<tr>
				<td>Vital signs</td>
				<td>
					<table style="width: 100%">
						<tr>
							<td>Blood pressure (mm Hg) :&emsp;&emsp;<input type="text" ng-model=" " /></td>

						</tr>
						<tr>
							<td>Radial Pulse rate (Beats/ min) :<input type="text" ng-model=" " /></td>

						</tr>
						<tr>
							<td>Oral temperature (&#8457;) :&emsp;&emsp;&emsp;&emsp;<input type="text" ng-model=" " /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<p>
			General physical examination:&emsp;&emsp; &emsp;&emsp; <input
				type="checkbox" value="Normal">Normal &emsp;&emsp; &emsp;&emsp;
			&emsp;&emsp; &emsp;&emsp; <input type="checkbox" value="Abnormal">Abnormal
		</p>

		<table style="width: 100%">
			<tr>
				<td>Systemic Examination</td>
				<td>
					<table style="width: 100%">
						<tr>
							<td>System *</td>
							<td>Normal</td>
							<td>Abnormal</td>
							<td>Comments</td>

						</tr>
						<tr>
							<td>RS</td>
							<td><input type="checkbox" value="Normal"></td>
							<td><input type="checkbox" value="Abnormal"></td>
							<td><textarea rows="2" cols="30" style="width:98%"></textarea></td>

						</tr>
						<tr>
							<td>CVS</td>
							<td><input type="checkbox" value="Normal"></td>
							<td><input type="checkbox" value="Abnormal"></td>
							<td><textarea rows="2" cols="30" style="width:98%"></textarea></td>

						</tr>
						<tr>
							<td>Abdomen</td>
							<td><input type="checkbox" value="Normal"></td>
							<td><input type="checkbox" value="Abnormal"></td>
							<td><textarea rows="2" cols="30" style="width:98%"></textarea></td>
						</tr>
						<tr>
							<td>CNS</td>
							<td><input type="checkbox" value="Normal"></td>
							<td><input type="checkbox" value="Abnormal"></td>
							<td><textarea rows="2" cols="30" style="width:98%"></textarea></td>
						</tr>
					</table>
					
				</td>
			</tr>
		</table>
		<P>Any other findings:</P>
	
		<textarea rows="3" cols="175"></textarea>
		<hr style="width: 100%">
		<p>Physician's comments:</p>
	 <textarea rows="3" cols="175"></textarea>

	</div>
	<p>*RS: Respiratory System CVS: Cardio Vascular System CNS: Central
		Nervous System
	<p>
	<div align="right">
		End Time: <input type="time" ng-model=" " />
	</div>
	<p>
		Is the subject fit for Check-in? &emsp;&emsp; &emsp;&emsp; 
		<select><option value="YES">YES</option>
		<option value="NO">NO</option></select>
	</p>
	<br>
	<br>

	<footer>
		<div align="right">

			<br> &emsp;Reviewed by : <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 12 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form12" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form14" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>