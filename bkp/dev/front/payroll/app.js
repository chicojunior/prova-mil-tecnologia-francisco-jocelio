(function() {
	angular
		.module('payroll', ['ngRoute'])
		.config();

	HomeController.$inject = ['$rootScope', '$location'];
	TesteController.$inject = ['$rootScope', '$location'];

	function HomeController($rootScope, $location) {

		$rootScope.activetab = $location.path();

 	};

 	function TestController($rootScope, $location) {

		$rootScope.activetab = $location.path();

 	};

})();