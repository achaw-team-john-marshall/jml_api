'use strict';

/**
 * @ngdoc function
 * @name jmlApiApp.controller:QuestionnairechoicesCtrl
 * @description
 * # QuestionnairechoicesCtrl
 * Controller of the jmlApiApp
 */
angular.module('jmlApiApp')
  .controller('QuestionnairechoicesCtrl', function ($scope) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.getAway = function() {
      window.open('http://weather.com', '_newtab');
      window.location.replace('http://google.com');
    };

    $(function () {
      $('[data-toggle="tooltip"]').tooltip();
    });

  });
