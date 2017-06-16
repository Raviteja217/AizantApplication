<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<meta charset="ISO-8859-1">
<title>AZ_FORM_14</title>
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

	<b>Q.</b>
	<b><u>CHECK-OUT DETAILS**</u></b>
	<br>
	<br>

	<table style="width: 100%">
		<tr>
			<td>Locker key received</td>
			<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
		</tr>
		<tr>
			<td>Uniform received</td>
			<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
		</tr>
		<tr>
			<td>Subject ID card received</td>
			<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
		</tr>
		<tr>
			<td>Is the subject instructed about restrictions #<br> to be
				followed throughout the study?</td>
			<td><select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select></td>
		</tr>
	</table>
	<br>
	<i>** Capture the subject signature in 'ACTIVITY CONFIRMATION
		RECORD BY SUBJECTS'</i>
	<br>
	<br>
	<i># Restrictions to be followed</i>
	<br>
	<br>
	<i>Throughout the study :</i>
	<ul>
		<li>Not to take any caffeine and xanthine-containing foods or
			beverages (i.e. coffee, tea, chocolate, and caffeine-containing
			sodas, colas, etc.).</li>
		<li>Not to consume Grapefruit juice or related products.</li>
		<li>Not to consume / chew any tobacco containing products {pan
			masala, gutkha, supari (betel nut)} etc.</li>
		<li>Not to take any prescribed medication, OTC medicinal products
			and herbal products for therapeutic purpose.</li>
	</ul>
	<br>
	<br> Check out time*:
	<input type="time" ng-model="" />
	<div align="right">
		<br> &emsp;Recorded by :<input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a> <br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Sign & Date) <br>
	</div>
	<P>*Record the check-out date and time also on cover page of CRF.</P>
	<br>
	<div id="border">
		<P>
			<strong>Is Blood sample collection record attached?</strong>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<select>
						<option value="YES">YES</option>
						<option value="NO">NO</option></select>
		</P>
		<br> &emsp;Copy No:<input type="number" style="width: 30px;" ng-model="">
		<div align="right">
			<br> &emsp;Recorded by <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a> <br>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
	</div>

	<footer>
		<div align="right">

			<br> &emsp;Reviewed by : <input type="text" ng-model="pin" placeholder="Enter pin here"><a href="pin_user?pin={{pin}}">OK</a><br>
			&emsp;&emsp;&emsp;(Sign & Date) <br>
		</div>
		<div align="left">Page 13 of 15</div>
		</footer>

	</div>
	<div align="center">
		<a href="Form13" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<a href="#" class="btn btn-primary" type="button">SUBMIT</a>&emsp;&emsp;
		<a href="Form15" class="btn btn-primary">NEXT</a>
	</div>
	</div>
</body>
</html>