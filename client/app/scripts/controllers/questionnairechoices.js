'use strict';

/**
 * @ngdoc function
 * @name jmlApiApp.controller:QuestionnairechoicesCtrl
 * @description
 * # QuestionnairechoicesCtrl
 * Controller of the jmlApiApp
 */
angular.module('jmlApiApp')
  .controller('QuestionnairechoicesCtrl', [ '$scope', 'questionnaireChoices', function ($scope, questionnaireChoices) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.emptyChoices = [];
    var unorderedChoices = questionnaireChoices.query(function() {
      for (var i = 0; i < unorderedChoices.length; i++) {
        $scope.emptyChoices[unorderedChoices[i].position - 1] = unorderedChoices[i];
        $scope.choices = $scope.emptyChoices;
        console.log($scope.choices);
      }
    });

    $scope.answerYes = function() {
      $scope.choices.shift();
      console.log($scope.choices[0].body);
      $scope.choices[0].visible = true;
      console.log($scope.choices.length);
    };

    $scope.answerNo = function() {
      window.location.replace('/#/question');
    };

  }]);
