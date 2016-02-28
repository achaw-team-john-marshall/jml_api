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
    
    $scope.choices = [];
    var unorderedChoices = questionnaireChoices.query(function() {
      for (var i = 0; i < unorderedChoices.length; i++) {
        $scope.choices[unorderedChoices[i].position - 1] = unorderedChoices[i];
        console.log($scope.choices);
      };
    });




    console.log(unorderedChoices);

    $scope.getAway = function() {
      window.open('http://weather.com', '_newtab');
      window.location.replace('http://google.com');
    };

    $(function () {
      $('[data-toggle="tooltip"]').tooltip();
    });

  }]);
