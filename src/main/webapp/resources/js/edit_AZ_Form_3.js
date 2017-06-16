var app = angular.module('editApp', ['ngMaterial','ngMessages'],
	function($locationProvider) {
    $locationProvider.html5Mode(true);
    
});
/*app.config(function($mdDateLocaleProvider) {
	$mdDateLocaleProvider.formatDate = function(date) {
		return moment(date).format('DD/MMM/YYYY');
	};
});*/

app.controller('edit_AZ_Form3Ctrl', function($scope, $http, $log, $window, $location) {
	var formId = $location.search().id;
	$http.get('/AizantCaseReportApplication/AZ_Form_3_edit_angular?id=' + formId).then(function(response) {
		console.log(' response', response.data);
		$scope.AZ_Form_3= response.data;
	});



	$scope.editAZ_form3 = function() {
		/*$scope.study.date = moment($scope.study.date).format('DD/MMM/YYYY')
		$scope.study.dosingTime = moment($scope.study.dosingTime).format('HH:mm')*/
		$http.post('/AizantCaseReportApplication/store_AZ_Form_3', $scope.AZ_form3).then(
				function(result) {
					console.log('FINISHHHHEEDDDD');
					var url = "http://" + $window.location.host
							+ "/AizantCaseReportApplication/Subject_Form";
					$log.log(url);
					$window.location.href = url;

				});

	};

});
