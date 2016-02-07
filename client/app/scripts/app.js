'use strict';

/**
 * @ngdoc overview
 * @name jmlApiApp
 * @description
 * # jmlApiApp
 *
 * Main module of the application.
 */
var app = angular.module('jmlApiApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]);
  app.config(function ($routeProvider) {
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
      .when('/questions', {
        templateUrl: 'views/questions.html',
        controller: 'QuestionsCtrl',
        controllerAs: 'questions'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
  app.factory('Question', ['$resource', function($resource) {
    return $resource('/api/questions/:id.json', null, {
      'update': {method: 'PUT' }
    });
  }]);

