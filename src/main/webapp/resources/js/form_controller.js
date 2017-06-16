var app = angular.module('myApp', [], function(
		$locationProvider) {
	$locationProvider.html5Mode(true);
});

app.controller('Form_Ctrl', function($scope, $http, $log, $window, $location) {
	var mainFormId = $location.search().id;
	$http.get('/AizantForms/mainForm?id=' + mainFormId).then(
			function(response) {
				console.log('mainForm response', response.data);
				$scope.mainForm = response.data;
			});

});
