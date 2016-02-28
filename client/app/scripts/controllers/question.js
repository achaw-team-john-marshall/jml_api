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

    $scope.answerToggleVisible = function(inputIndex) {
      $scope.questions[inputIndex].answerVisible = !$scope.questions[inputIndex].answerVisible;
    };

    $scope.getAway = function() {
      window.open('http://weather.com', '_newtab');
      window.location.replace('http://google.com');
    };

    angular.element(function () {
      angular.element('[data-toggle="tooltip"]').tooltip();
    });

  }]);
