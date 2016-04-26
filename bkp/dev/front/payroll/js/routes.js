(function () {

	angular
		.module('myApp', ['ui.router'])
		.config();

	function($stateProvider, $urlRouterProvider) {

	  $urlRouterProvider.otherwise("/home");

	  $stateProvider
		  .state('home', {
		    url: "/home",
		    templateUrl: "views/home.html"
		  })
	    .state('test', {
	      url: "/test",
	      templateUrl: "views/test.html"
	    })
	}

})();