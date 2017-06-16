var app = angular.module('myApp', []);
app.controller('FormsCtrl', function($scope, $http) {
	
	$http.get("listOfProjectsinCrf").then(function(response) {
		$scope.projects = response.data;
		console.log('hello',response.data)
	});
	$http.get("listOfCrfinCrf").then(function(response) {
		$scope.crf = response.data;
		console.log('hello',response.data)
	});
	$http.get("list7").then(function(response) {
		$scope.forms = response.data;
		console.log('hello',response.data)
	});
	$scope.assignForms = {


			project_Number:'',
	crfNo:'',
	form:''
		
	
	};
	console.log('Form response');
	$scope.addAssignForms = function() {
	
		$http.post('/AizantForms/store_assignForms', $scope.assignForms).then(
				function(result)

				{
					console.log('Form response23');
					var url = "http://" + $window.location.host
							+ "/AizantForms/show_assigForms";
					$log.log(url);
					$window.location.href = url;
				});
	 

	};
});
