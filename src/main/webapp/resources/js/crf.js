var app=angular.module('myApp',[]);
app.controller('crfCtrl', function($scope, $http, $log, $window) {	
	 
	$scope.crfCount = "1";
	$scope.createProject = {
			projectNo : ' ',
		
			projectDes : ' ',
			
		crf : {
			projectNumber:'',
		}
		   [{crf_Number : 'CRF 1'} ],
		     
		  
		      
		
	};
	
	/*
	 This is where the $watch function comes in.
	$watch provides us with a way to keep calculated 
	values up to date when the values that they depend on change. 
	*/
	
	$scope.$watch("crfCount", function(newValue, oldValue) {
		var sampleLength = $scope.crf.crf_Number.length;
		var newLength = parseInt(newValue);

		if (sampleLength === newLength) {
			return;
		}
		
		if (sampleLength < newLength) {
			for (var i = 0; i < (newLength - sampleLength); i++)
				$scope.crf.crf_Number.push({timePoint:''+(sampleLength+i)});
		} else {
			for (var i = 0; i < (sampleLength - newLength); i++)
				$scope.crf.crf_Number.pop("");
		}
	});
	
	$scope.$watch("volunteerCount", function(newValue, oldValue) {
		var sampleLength = $scope.study.studyVolunteers.length;
		var newLength = parseInt(newValue);

		if (sampleLength === newLength) {
			return;
		}
		if (sampleLength < newLength) {
			for (var i = 0; i < (newLength - sampleLength); i++)
				$scope.study.studyVolunteers.push({
					registerNumber : 'V ID ' + (sampleLength + i + 1)
					
				});
		} else {
			for (var i = 0; i < (sampleLength - newLength); i++)
				$scope.study.studyVolunteers.pop("");
		}
	});


	$scope.addStudy = function() {
		$scope.study.date = moment($scope.study.date).format('DD/MMM/YYYY')
		$scope.study.dosingTime = moment($scope.study.dosingTime).format('HH:MM')
		$http.post('/aizantit/store_study', $scope.study).then(
				function(result)

				{
					var url = "http://" + $window.location.host
							+ "/aizantit/display_study";
					$log.log(url);
					$window.location.href = url;
				});
	 

	};

});
