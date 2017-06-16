var app = angular.module('myApp', [ 'ngMaterial','ngMessages'],
function($locationProvider) {
    $locationProvider.html5Mode(true);
    
});
app.config(function($mdDateLocaleProvider) {
	$mdDateLocaleProvider.formatDate = function(date) {
		return moment(date).format('DD/MMM/YYYY');
	};
});

app.controller('AZ_Form_3Ctrl', function($scope, $http, $log, $window, $location) {	
/*	var mainFormId = $location.search().id;
	$http.get('/AizantCaseReportApplication/mainForm?id='+ mainFormId).then(function(response) {
		console.log('mainForm response', response.data);
		$scope.mainForm = response.data;
	});*/
	$http.get("list1").then(function(response) {
		$scope.names = response.data;
	});
	$scope.AZ_Form_3 = {
		crfNo:' ',
		projectNo:' ',
		registrationNo:' ',
		periodNo:' ',
		subjectNo:' ',
		a : 'YES',
		b : 'YES',
		c_1 : 'YES',
		c_2 : 'YES',
		c_3 : 'YES',
		c_4 : 'YES',
		c_5:'YES',
		c_6:'YES',
		c_7:'YES',
		restriction_compliance:'YES',
		comments:'',
		recorded_By:'',
		reviewed_By:'',
		
			
		
	};
	
	$scope.AZ_Form3 = function() {
		console.log("dsfsdf")
/*		$scope.AZ_Form_3.date = moment($scope.AZ_Form_3.date).format('DD/MMM/YYYY')
		$scope.AZ_Form_3.dosingTime = moment($scope.AZ_Form_3.dosingTime).format('HH:MM')*/
		$http.post('/AizantCaseReportApplication/store_AZ_Form_3', $scope.AZ_Form_3).then(
				function(result)

				{
					var url = "http://" + $window.location.host
							+ "/AizantCaseReportApplication/Subject_Form";
					$log.log(url);
					$window.location.href = url;
				});
	 

	};

});
