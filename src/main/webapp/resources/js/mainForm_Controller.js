var app = angular.module('myApp', [  ]);

app.controller('formCtrl', function($scope, $http, $log, $window) {
	$http.get("list1").then(function(response) {
		$scope.names = response.data;
	});
	$scope.mainForm = {
		projectNo : '',
		crfNo : ' ',
		projectTitle : ' ',
		protocolNo : ' ',
		protocolVersion : ' ',
		periodNo : ' ',
		registrationNo : ' ',
		subjectNo : ' '
	};
	console.log('Hello mainForm')
	$scope.mainForms = function() {
		console.log("entering into main Form method")

		$http.post('/AizantForms/store_mainReport', $scope.mainForm).then(
				function(result)

				{
					var url = "http://" + $window.location.host
							+ "/AizantForms/show_mainReports";
					$log.log(url);
					$window.location.href = url;
				});
		

	};

});
