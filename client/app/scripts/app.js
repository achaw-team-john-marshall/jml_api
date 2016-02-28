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
      .when('/questionnaireChoices', {
        templateUrl: 'views/questionnairechoices.html',
        controller: 'QuestionnairechoicesCtrl',
        controllerAs: 'questionnaireChoices'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
