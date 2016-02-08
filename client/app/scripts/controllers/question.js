'use strict';

/**
 * @ngdoc function
 * @name jmlApiApp.controller:QuestionCtrl
 * @description
 * # QuestionCtrl
 * Controller of the jmlApiApp
 */
angular.module('jmlApiApp')
  .controller('QuestionCtrl', ['$scope', 'question', function($scope, question) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
    $scope.questions = question.query();
  }]);
