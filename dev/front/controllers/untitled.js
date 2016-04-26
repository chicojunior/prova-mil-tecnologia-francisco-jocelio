(function() {
	angular
		.module('payroll', [])
		.controller('HomeController', MainController)
		.controller('TesteController', MainController);

	HomeController.$inject = ['$rootScope', '$location'];
	TesteController.$inject = ['$rootScope', '$location'];

	function HomeController($rootScope, $location) {

		$rootScope.activetab = $location.path();

 	};

 	function TestController($rootScope, $location) {

		$rootScope.activetab = $location.path();

 	};

})();