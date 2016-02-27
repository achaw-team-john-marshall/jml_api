'use strict';

/**
 * @ngdoc service
 * @name jmlApiApp.questionnaireChoices
 * @description
 * # questionnaireChoices
 * Factory in the jmlApiApp.
 */
angular.module('jmlApiApp')
  .factory('questionnaireChoices', ['$resource', function($resource) {
   return $resource('/api/questionnaire_choices/:id.json', null, {
    'update': { method:'PUT' }
  });
}]);
