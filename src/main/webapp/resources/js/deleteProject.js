var app = angular.module('myApp', [ 'ui.bootstrap' ])
var modalTemplate = 
	"<div style='background-color:powderblue;' class='modal-header'>"
	+ "<button ng-click='x()'type='button' style='color:#CB2020;' class='close' data-dismiss='modal'>x</button>"
	+ "<h4 class='dialogTitle'>Warning!</h4>"
	+ "</div>"
+"<div class='modal-body'><span><i style= color:#CB2020;' class='glyphicon glyphicon-remove w3-spin w3-jumbo'></i> Are you sure You want to Delete this Project <span style= color:blue;'><b>({{projectNo}})</b></span> ?</span></div>"
	// +"<div class='modal-body' ><span style= color:#CB2020;' class='glyphicon
	// glyphicon-remove'></span> <span> Are you sure You want to Delete
	// {{username}} </span> </div>"
	+ "<div  class='modal-footer'>"
	+ "<button ng-click='cancel()' type='button' class='btn btn-default' data-dismiss='modal'>No</button>"
	+"<button ng-click='delete()' type='button' class='btn btn-danger' data-dismiss='modal'>Yes</button></div>";

app.controller('projectsCtrl', function($scope, $http, $uibModal) {
	$http.get("list1").then(function(response) {
		$scope.projects = response.data;
	});


	$http.get('pageCount').then(function(response) {
		$scope.pagecount = response.data;
		console.log('Page count', response.data)
		$scope.numlist = new Array($scope.pagecount);
	
	});

	$scope.openDeleteModal = function(id, projectNo ) {
		var modalInstance = $uibModal.open({
			template : modalTemplate,
			controller : 'deleteModalController',
			resolve : {
				id : function() {
					return id;
				},
		projectNo : function() {
			return projectNo;
		}
			}

		});
		
	
		
	  };
	
	  $scope.goToPage = function(pageNumber) {
			console.log('GOIN TO A NEW PAGE');
			$scope.currentPage = pageNumber;
			var searchUrl = 'list?page=' + pageNumber +
				($scope.filter ? ('&filter=' + $scope.filter) : '');
			$http.get(searchUrl).then(function(response) {
				$scope.names = response.data;
			});
		}
	$scope.search = function(){
		console.log('search.........');
		$scope.filter=$scope.tempfilter;
		console.log('search.........');
			$http.get('list?page=1&filter='+$scope.filter).then(function(response) {
				console.log('ID modal');
				$scope.names = response.data;
				angular.copy($scope.names, response.data);
				console.log('user', $scope.names);
				$scope.currentPage = 1;
			});
			
			$http.get('pageCount').then(function(response) {
				$scope.pagecount = response.data;
				console.log('Page count', response.data)
				angular.copy(
						$scope.numlist,
						new Array($scope.pagecount))
			});
	};
});

app.controller('deleteModalController', function($scope, $http, $uibModalInstance, id,projectNo) {
	console.log('delete', id);


	$scope.id = id;
	$scope.projectNo = projectNo;

	$scope.delete = function() {
		/*
		 * var user={userName:$scope.username} console.log('deleting', user);
		 */
		var body = { projectId: $scope.id };
		console.log('deleting', body);
		$http.post('/AizantCaseReportApplication/deleteproject?projectId=' + $scope.id).then(function(response) {
			console.log('IAM HEREE DELETEING');
			$uibModalInstance.close('delete');	
			location.reload();
		
			
			
		});
	};
	$scope.cancel = function() {
		$uibModalInstance.dismiss('cancel');

	};
	$scope.x = function() {
		$uibModalInstance.dismiss('x');
	};
});
