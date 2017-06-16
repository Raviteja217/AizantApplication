<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_16</title>
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
	width: 100%;
	padding: 0px;
	border: 3px solid black;
	margin-right: 1cm;
	margin-left: 0cm;
}

.small {
	line-height: 80%;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

#border {
	margin: 5px;
	padding: 5px;
	border-style: ridge;
}

th, td {
	padding: 0px;
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
		<br> <b>T. <u>ADVERSE EVENT AND CONCOMITANT MEDICATION
				RECORD:</u></b> <br>
		<div id="border">
			<p>Any Adverse Event (s) Reported></p>
			<ul>
				<li>During
					Study&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>
						<option value="N/A">N/A</option>
				</select>
				</li>
				<br>
				<li>Post study safety
					sample&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
					<select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>
						<option value="N/A">N/A</option>
				</select>
				</li>
				<br>
				<li>Check-out
					ECG&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<select>
						<option value="YES">YES</option>
						<option value="NO">NO</option>
						<option value="N/A">N/A</option>
				</select>
				</li>
				<br>
			</ul>
			<p>If "yes", please refer copy number of respective forms and
				attach the same to this CRF</p>
			<b><hr></b>
			<P>
				<strong>Concomitant medication given:</strong>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<select>
					<option value="YES">YES</option>
					<option value="NO">NO</option>
				</select>
			</P>
			<p>(If yes, record any concomitant drug treatment during study
				period and in post study safety assessment)</p>
			<table style="width: 100%">
				<tr>
					<td><strong>Drug Name</strong><br>(Generic or Brand) &<br>
						<strong>Strength</strong></td>
					<td><strong>Indication</strong></td>
					<td><strong>Route</strong> (Oral/ IV/IM/ Topical)</td>
					<td><strong>Total Daily Dose</strong></td>
					<td><strong>Frequency</strong><br>(OD/BD/ TDS/ QID)</strong></td>
					<td><strong>Treatment Start<br> Date
					</strong></td>
					<td><strong>Ongoing Treatment</strong><br> (Yes/No)</td>
					<td><strong>Treatment Stopped <br>Date
					</strong></td>
				</tr>
				<tr>
					<td><input type="text" style="width: 150px;" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="date" ng-model=""></td>
					<td><select>
							<option value="YES">YES</option>
							<option value="NO">NO</option>
					</select></td>
					<td><input type="date" ng-model=""></td>
				</tr>
				<tr>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="date" ng-model=""></td>
					<td><select>
							<option value="YES">YES</option>
							<option value="NO">NO</option>
					</select></td>
					<td><input type="date" ng-model=""></td>
				</tr>
				<tr>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="date" ng-model=""></td>
					<td><select>
							<option value="YES">YES</option>
							<option value="NO">NO</option>
					</select></td>
					<td><input type="date" ng-model=""></td>
				</tr>
				<tr>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="text" ng-model=""></td>
					<td><input type="date" ng-model=""></td>
					<td><select>
							<option value="YES">YES</option>
							<option value="NO">NO</option>
					</select></td>
					<td><input type="date" ng-model=""></td>
				</tr>


			</table>
			<div align="left">
				<br> &emsp;Recorded by : <input type="text" ng-model="pin"
					placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>&emsp;&emsp;&emsp;&emsp;<br>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Sign & Date) <br>
			</div>
		</div>

		<div align="right">
			<br> &emsp;Reviewed by :<input type="text" ng-model="pin"
				placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>&emsp;&emsp;&emsp;&emsp;
			<br> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Sign &
			Date) <br>
		</div>

		<div id="box">
			<center>
				<h4>
					<u>Principal Investigator's Declaration</u>
				</h4>
			</center>

			<strong><p>I hereby confirm that I have reviewed this
					Case Report Form and accompanying source documents and find them
					complete and accurate to the best of my knowledge.</p></strong>
			<div align="left">
				<br> &emsp;Principal Investigator : <input type="text"
					ng-model="pin" placeholder="Enter pin here"><a
					href="pin_user?pin={{pin}}">OK</a><br>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Sign & Date) <br>
			</div>
		</div>
		<br>
		<center>
			<strong>Version History</strong>
		</center>
		<table style="width: 100%">
			<tr>
				<th>Version No.</th>
				<th>Supersedes No.&Date</th>
				<th>Changes Made</th>
			</tr>
			<tr>
				<td>00</td>
				<td>Nil</td>
				<td>N/A</td>
			</tr>
		</table>
		<footer>
		<div align="left">Page 15 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form15" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;

	</div>
	</div>
</body>
</html>