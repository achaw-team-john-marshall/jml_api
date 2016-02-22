'use strict';

/**
 * @ngdoc overview
 * @name jmlApiApp
 * @description
 * # jmlApiApp
 *
 * Main module of the application.
 */
angular
  .module('jmlApiApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
    'ng-token-auth'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        controllerAs: 'about'
      })
      .when('/question', {
        templateUrl: 'views/question.html',
        controller: 'QuestionCtrl',
        controllerAs: 'question'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
