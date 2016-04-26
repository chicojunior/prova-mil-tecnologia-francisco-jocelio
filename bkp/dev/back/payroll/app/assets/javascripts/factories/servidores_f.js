(function() {

	'use strict';

	angular
		.module('payroll')
		.factory('ServidoresFactory', ServidoresFactory);

	ServidoresFactory.$inject = ['$resource'];

	function ServidoresFactory($resource) {

		return $resource('/servidores.json', {}, actions {
			query: { method: 'GET', isArray: true },
			create: { method: 'POST' }
		});

	};

})();