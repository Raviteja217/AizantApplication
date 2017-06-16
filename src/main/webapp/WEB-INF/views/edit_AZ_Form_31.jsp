<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="n" ng-app="editApp">
<head>
<base href="AizantCaseReportApplication">
<title>AIZANT::AZ_Form_3</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>




<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-aria.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-messages.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angular_material/1.0.0/angular-material.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/moment.min.js" /></script>
<%-- <script
	src="<%=request.getContextPath()%>/resources/js/edit_AZ_Form_3_Controller.js" /></script> --%>
<meta charset="ISO-8859-1">
<title>AZ_FORM_3</title>
<style>
.allbody {
	border-style: double;
	margin: 30px;
	font-family: Times New Roman;
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
	<div class="allbody" >
		<div>
			<img src="http://allianceinstitute.org/placementlogos/aizant.jpg"
				alt="Aizant" align="right">
		</div>

			<form modelAttribute="AZ_Form_3" method="post" action="update_AZ_Form_3 " >
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
			<div id="leftContainer">CRF No. :<input type="text" value="${form3.crfNo }"></div>
			<div align="center" style="width: 67%">Project No.:&emsp;<input type="text" ng-init="AZ_Form_3.projectNo='${form3.projectNo}'" ng-model="AZ_Form_3.projectNo"></div>
			<br>

			<div id="left" style="float: left; width: 33%;">
				Registration No.: &emsp;<input type="text" ng-init="AZ_Form_3.registrationNo='${form3.registrationNo }'" ng-model="AZ_Form_3.registrationNo">
			</div>
			<div id="left" style="float: left; width: 33%;">
				Period No.: &emsp;<input type="text" ng-init="AZ_Form_3.periodNo='${form3.periodNo}'" ng-model="AZ_Form_3.periodNo">
			</div>
			<div align="right" style="float: right; width: 33%;">
				Subject No.: &emsp;<input type="text" ng-init="AZ_Form_3.subjectNo='${form3.subjectNo }'" ng-model="AZ_Form_3.subjectNo">
			</div> 
		
</div> 
  		<br>

		<hr>
		<center>
			<p>(Put &#10004; tick mark on appropriate box)</p>
		</center>
		<b>A. </b> <b>Is the subject verified for Volunteer Cross
			Participation?</b> &emsp;&emsp; &emsp;&emsp;&emsp;&emsp;<select ng-model="AZ_Form_3.a">
		
			<option value="YES">YES</option>
			<option value="NO">NO</option>
			<option value="N/A">N/A</option>

		</select> <br> (applicable for period-1) <br> <br> <b>B.</b> <b>
			Is the subject eligible to participate in the study?</b> &emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp; &emsp;&emsp; &emsp;<select ng-model="AZ_Form_3.b">
			<option value="YES">YES</option>
			<option value="NO">NO</option>

		</select> <br> <br> <b>C.</b> <b><u>RESTRICTION COMPLIANCE</u> </b> <br>
		<br>

		<table style="width: 100%">
			<tr>
				<td>1. Have you taken any prescribed medication in the last 14
					days prior to dosing / since previous period check-out?</td>
				<td><select ng-model="AZ_Form_3.c_1"  required>
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>
			</tr>
			<tr>
				<td>2. Have you taken any OTC medicinal products, herbal
					products for therapeutic purpose in the last 07 days prior to <br>&emsp;dosing
					/ since previous period check-out?
				</td>
				<td><select ng-model="AZ_Form_3.c_2">
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>


			</tr>
			<tr>
				<td>3. Have you consumed any caffeine and xanthine-containing
					foods or beverages (i.e. coffee, tea, chocolate, <br>&emsp;and
					caffeine-containing sodas, colas, etc.) in the last 48.00 hours
					prior to check-in/ since previous period check-out?
				</td>
				<td><select ng-model="AZ_Form_3.c_3">
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>
			</tr>
			<tr>
				<td>4. Have you consumed any Grapefruit juice or related
					products in the last 72.00 hours prior to check-in/ since previous<br>&emsp;
					period check-out?
				</td>
				<td><select ng-model="AZ_Form_3.c_4">
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>

			</tr>
			<tr>
				<td>5. Have you consumed / chewed any tobacco containing
					products {pan masala, gutkha, supari (betel nut)} etc. <br>&emsp;in
					the last 48.00 hours prior to check-in/ since previous period
					check-out?
				</td>
				<td><select ng-model="AZ_Form_3.c_5">
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>
			</tr>
			<tr>
				<td>6. Have you participated in any drug research study within
					past 90 days / since previous period check-out?</td>
				<td><select ng-model="AZ_Form_3.c_6">
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>

			</tr>
			<tr>
				<td>7. Have you donated blood within past 90 days / since
					previous period check-out??</td>
				<td><select ng-model="AZ_Form_3.c_7">
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>

			</tr>
		</table>
		<br>
		<table style="width: 100%">
			<tr>
				<td>Does the subject comply with Restriction compliance?</td>
				<td><select ng-model="AZ_Form_3.restriction_compliance">
						<option value="YES">YES</option>
						<option value="NO">NO</option>

				</select></td>

			</tr>
		</table>
		<br>
		<p>Comments:</p>
		<textarea rows="5" cols="175" value="${form3.comments }">
</textarea>
		<br>
		<div align="left">
			<br> &emsp;Recorded by : <input type="text" value=" ${form.crfNo}"
				placeholder="Enter pin here"><!-- <a href="pin_user?pin={{pin}}">OK</a> --><br>(Sign
			& Date) <br>
		</div>
		<br>

		<footer>

		<div align="right">
			<br> &emsp;Reviewed by : <input type="text" ng-model="AZ_Form_3.Reviewed_By"><!-- <a href="pin_user?pin={{pin}}">OK</a> --><br>(Sign & Date) <br>
		</div>
		<div align="left">Page 2 of 15</div>
		</footer>
		
	</div>
	</div>
	<div id="leftContainer">
							<a href="Forms"><span
								class="glyphicon glyphicon-menu-left"></span>Back</a>
						</div>
						<div id="rightContainer">

							<a href="Subject_Form"><span class="glyphicon glyphicon-menu-left">Home</span></a>
						</div>
	<div align="center">
		<a href="Form2" class="btn btn-primary" type="button">PREVIOUS</a>&emsp;&emsp;
		<input value="submit" class="btn btn-info" type="submit"/>&emsp;&emsp;
		<a href="Form4" class="btn btn-primary">NEXT</a>
	</div>
	</form>
	</div>
</body>
</html>