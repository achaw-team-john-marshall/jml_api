'use strict';

/**
 * @ngdoc function
 * @name jmlApiApp.controller:QuestionsCtrl
 * @description
 * # QuestionsController  
 * Controller of the jml_api
 */
angular.module('jmlApiApp')
.controller('QuestionsCtrl', ['$scope', 'Question', function ($scope, Question) {
  $scope.questions = Question.query();
}]);
