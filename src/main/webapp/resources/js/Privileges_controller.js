var myApp = angular.module('myApp',[]);
myApp.controller('PrivilegesCtrl',function ($scope,$http) {
               
	$http.get("list").then(function(response) {
		$scope.users = response.data;
	});
	$http.get("listOfProjects").then(function(response) {
		$scope.projects = response.data;
		console.log('hello',response.data)
	});
	$http.get("listOfCrf").then(function(response) {
		$scope.crf = response.data;
		console.log('hello',response.data)
	});
	$http.get("list7").then(function(response) {
		$scope.forms = response.data;
		console.log('hello',response.data)
	});
            });