'use strict';

/**
 * @ngdoc function
 * @name jmlApiApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the jmlApiApp
 */
angular.module('jmlApiApp')
  .controller('MainCtrl', ['$scope', function($scope) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    window.$scope = $scope;

  }]);
