(function() {

	'use strict';

	angular
		.module('payroll')
		.factory('ServidorFactory', ServidorFactory);

	ServidorFactory.$inject = ['$resource'];

	function ServidorFactory($resource) {

		return $resource('/servidores/:id.json', {}, actions {
			show: { method: 'GET' },
			update: { method: 'PUT', params: { id: '@id'} },
			delete: { method: 'DELETE', params: { id: '@id'} }
		});

	};

})();