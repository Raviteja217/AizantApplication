<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_9</title>
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
		<br> <b>J. <u>VITAL SIGNS (PRE- DOSE)</u></b> <br>
		<table style="width: 100%">
			<tr>
				<th><b>Date</b></th>
				<th><b>Start time</b></th>
				<th><b>Blood pressure (mmHg)</b></th>
				<th><b>Radial Pulse rate (Beats / min)</b></th>
				<th><b>Oral Temperature (&#8457;F)</b></th>
				<th><b>End time</b></th>
			</tr>
			<tr>
				<td><input type="date" ng-model=" "></td>
				<td><input type="time" ng-model=" "></td>
				<td><input type="text" ng-model=" "></td>
				<td><input type="text" ng-model=" "></td>
				<td><input type="number" ng-model=" "></td>
				<td><input type="time" ng-model=" "></td>
			</tr>
		</table>
		<br>
		<p>
			Is the subject safety monitoring parameters are within normal Limits?
			&emsp;&emsp;<select>
				<option value="YES">YES</option>
				<option value="NO">NO</option>
				<option value="N/A">N/A</option>
			</select>
		</p>

		<p style="font-size: 11px">(Applicable for period-2)</p>
		<br>
		<p>
			Is the subject fit for Dosing? : &emsp;&emsp;<select>
				<option value="YES">YES</option>
				<option value="NO">NO</option>
			</select>
		</p>
		<br> &emsp;Comments <br>
		<textarea rows="5" cols="175"></textarea>
		<br>
		<p>
			Performed by: <input type="file" ng-model=" ">
		</p>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Sign& Date) <br>


		<br> <b>K. <u>VITAL SIGNS (POST- DOSE)</u></b> <br>
		<table style="width: 60%">
			<tr>

				<th>Date</th>
				<th>Time point (Hrs)</th>
				<th>Scheduled time</th>
				<th>Start time</th>
				<th>Blood pressure (mmHg)</th>
				<th>Radial Pulse rate (Beats / min)</th>
				<th>Subject well being (OK / NOT OK*)</th>
				<th>Reference No.**</th>
				<th>End time</th>
				<th>Performed by (Sign & date)</th>

			</tr>
			<tr>
				<td><input type="date" ng-model=""></td>
				<td><b>1.00</b></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model="pin"
					placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td><input type="date" ng-model=""></td>
				<td><b>2.00</b></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model="pin"
					placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td><input type="date" ng-model=""></td>
				<td><b>3.00</b></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model="pin"
					placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
			<tr>
				<td><input type="date" ng-model=""></td>
				<td><b>4.00</b></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="text" ng-model="" style="width: 100px"></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="text" ng-model="pin"
					placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a></td>
			</tr>
		</table>
		<br>
		<p>* If NOT OK, please fill the Adverse Event Reporting Form.</p>
		<br>
		<p>** Mention the copy no. of AE/SAE reporting form and attach the
			same with this Case Report Form</p>
		<br> <b>Note</b>
		<ul>
			<li>Record the vitals at scheduled time ± 45 minutes.</li>
			<li>During posture restriction all study related activities till
				4.00 hours will be done at bed side only.</li>
		</ul>
		<br> &emsp;Comments <br>
		<textarea rows="3" cols="175"></textarea>
		<br> <br>
		<footer>
		<div align="right">

			<br> &emsp;Reviewed by : <input type="text" ng-model="pin"
				placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 8 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form8" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form10" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>