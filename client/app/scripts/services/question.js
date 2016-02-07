/* global angular */
'use strict';

/**
 * @ngdoc service
 * @name jmlApiApp.question
 * @description
 * # question
 * Factory in the jmlApiApp.
 */
angular.module('jmlApiApp')
  .factory('question', ['$resource', function($resource) {
   return $resource('/api/questions/:id.json', null, {
    'update': { method:'PUT' }
  });
  }]);
