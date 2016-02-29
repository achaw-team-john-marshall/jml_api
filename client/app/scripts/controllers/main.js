'use strict';

/**
 * @ngdoc function
 * @name jmlApiApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the jmlApiApp
 */
angular.module('jmlApiApp')
  .controller('MainCtrl', ['$scope', 'tools', function($scope, tools) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.getAway = function() {
      tools.quickClose();
    };

    angular.element(function() {
      tools.toolTip();
    });

    // angular.element(function () {
    //   angular.element('[data-toggle="tooltip"]').tooltip();
    // });

    window.$scope = $scope;

  }]);
