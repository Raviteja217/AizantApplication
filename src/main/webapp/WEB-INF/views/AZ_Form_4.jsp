<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_4</title>
<style>
.allbody  {
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

	<div class="small">
		<b>D. <u>ICF OBTAINED</u></b> <br> <span>(Applicable for period
			1)</span> &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; <select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>
						<option value="N/A">N/A</option>

				</select>
		<div align="right">
		<br> &emsp;Recorded by :<input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
		
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<br>(Sign & Date) <br>
	</div>
		<!-- 	<p>&emsp;&emsp;(applicable for period 1)</p> -->

	</div>
	<hr>
	<b>E. <u>ALCOHOL BREATH TEST</u></b>


	<table style="width: 90%">
		<tr>
			<td>TimePoint</td>
			<td>Date</td>
			<td>Time</td>
			<td>BAC*(%)</td>
			<td>Result</td>
			<td>Instrument ID</td>
			<td>Performed by(sign&date)</td>
			<td>Comments</td>
		</tr>
		<tr>
			<td>Check-in</td>
			<td><input type="date" ng-model=""></td>
			<td><input type="time" ng-model=""></td>
			<td><input type="text" ng-model=""></td>
			<td><select>
						<option value="Positive">Positive</option>
						<option value="Negative">Negative</option>
										</select></td>
			<td><input type="number" ng-model=""></td>
			<td><input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br></td>
			<td><textarea rows="2" cols="30" width="80%"></textarea></td>
		</tr>
	</table>
	<span>*BAC=Blood Alcohol Concentration</span>&emsp;&emsp;&emsp;
	<span>BAC>=0.01 is positive</span> &emsp;&emsp;&emsp;
	<span>BAC>=0.00 is negative</span>

	<br>
	<br>
	<b>F. <u>URIN DRUG SCREEN</u></b>
	<hr>

	<span>1) At the time of check-in:</span>
	<table style="width: 100%">
		<tr>
		<tr>
			<td>urin sample collected</td>
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
	<span>a) Test for urin drug screen</span>
	<br>
	<div id="border">
		<table style="width: 100%">
			<tr>
				<td>Drugs of abuse Test Strip_Make&Batch No</td>
				<td>Date of expiry</td>
				<td>Start Time</td>
				<td>Read time</td>
			</tr>
			<tr>
				<td><input type="text" ng-model=""></td>
				<td><input type="date" ng-model=""></td>
				<td><input type="time" ng-model=""></td>
				<td><input type="time" ng-model=""></td>
			</tr>
		</table>
		<table style="width: 100%">
			<tr>
				<td>Test</td>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
				<td>5</td>
				<td>6</td>

			</tr>
			<tr>
				<td>Result(N/P)*</td>
				<td><input type="text" ng-model=""></td>
				<td><input type="text" ng-model=""></td>
				<td><input type="text" ng-model=""></td>
				<td><input type="text" ng-model=""></td>
				<td><input type="text" ng-model=""></td>
				<td><input type="text" ng-model=""></td>
			</tr>
		</table>
		<p>1. Cannabinoids (Marijuana/Tetra Hydro Cannabinoids-THC) 2.
			Cocaine 3. Opiates (morphine) 4. Amphetamine 5. Barbiturates 6.
			Benzodiazepines
		<p>
		<table style="width: 100%">
			<tr>

				<td>Urin test for Drug Screen</td>
				<td><input type="checkbox">Positive</td>
				<td><input type="checkbox">Negative</td>
				<td>performed by :<input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
					 <br>(sign&date)
				</td>
				<td>verified by : <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
				<!-- 	<hr align="left" width="40%"> --> <br>(sign&date)
				</td>
		</table>

	</div>
	<span>*N- Negative</span> &emsp;&emsp;&emsp;
	<span>P-Positive</span>
	<br>
	<br>
	<br>
	<footer><div align="right">
	
		<br> &emsp;Reviewed by :<input type="text" ng-model="pin" placeholder="Enter pin here" required><a href="pin_user?pin={{pin}}">OK</a><br>
		&emsp;&emsp;&emsp;(Sign & Date) <br>
	</div>
	<div align="left">Page 3 of 15</div></footer>
	
</div>
<div align="center">
	<a href="Form3" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp; <a
			href="Form5" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>