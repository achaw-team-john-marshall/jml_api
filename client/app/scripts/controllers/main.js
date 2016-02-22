'use strict';

/**
 * @ngdoc function
 * @name jmlApiApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the jmlApiApp
 */
angular.module('jmlApiApp')
  .controller('MainCtrl', ['$scope', 'question', function($scope, question) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.questions = [
      {
        quesBody: "Have you or your family members experienced domestic abuse on behalf of your spouse? Domestic abuse can range from physical abuse to emotional abuse. Domestic abuse also includes serious financial control, where you have no control over family finances and the filing of tax returns.",
        quesVisible: true
      },
      {
        quesBody: "Did you and your spouse file joint tax returns?",
        quesVisible: false
      },
      {
        quesBody: "Do you owe the IRS tax due to erroneous items attributable to your spouse? You would likely be aware of this from the collection notices that the IRS periodically sends showing the amount of tax due. The tax would be attributable to your spouse if they incurred the tax, such as from their employment income, gambling earnings, retirement withdrawals, and business income.",
        quesVisible: false
      },
      {
        quesBody: "Has it been 2 years or less since the IRS first began collection activity on the tax?  In other words, did you start receiving notices from the IRS within the past two years?",
        quesVisible: false
      },
      {
        quesBody: "Are you and your former spouse divorced, legally separated, or have you maintained separate households for at least one year? You and spouse would be considered members of the same household if you and your spouse live in the same dwelling, or you and your spouse live in different places but are not separated, or if your spouse is absent from the household but is likely to return (such as from prison, educational purposes, sick in the hospital, or is in the military).",
        quesVisible: false
      },
      {
        quesBody: "Have you and your former spouse engaged in any fraudulent schemes so as to defraud the IRS or any other person? One example would be transferring assets so as to avoid tax in which you would benefit from. Assets include real estate, bonds, or other property that you now possess.",
        quesVisible: false
      },
      {
        quesBody: "For the tax years in question, did you or your spouse incur any large expenses,such as vacations, home improvements, private schooling or did you and your spouse make any large purchases, such as automobiles, appliances, or jewelry?",
        quesVisible: false
      },
      {
        quesBody: "Will you suffer financial hardship if you are required to pay the tax? For example,if you have to pay the tax, will you have trouble paying basic living expenses like food, shelter, and clothing?",
        quesVisible: false
      }
    ];

    $scope.faqs = [
      {
        question: "This is a question?",
        answer: "This is an answer.",
        faqVisible: false,
        answerVisible: false
      },
      {
        question: "This is another question?",
        answer: "This is another answer.",
        faqVisible: false,
        answerVisible: false
      }
    ];

    $scope.answerYes = function(inputIndex) {
      $scope.questions.shift();
      console.log($scope.questions[0].quesBody);
      $scope.questions[0].quesVisible = true;
      console.log($scope.questions.length);
    };

    $scope.answerNo = function(inputIndex) {
      $scope.questions[inputIndex].quesVisible = false;
      console.log($scope.questions[inputIndex].quesBody);
      $scope.faqs[0].faqVisible = !$scope.faqs[0].faqVisible;
      $scope.faqs[1].faqVisible = !$scope.faqs[1].faqVisible;

      // var i;
      // for (i = 0; $scope.faqs.length; i++) {
      //   $scope.faqs[i].faqVisible = true;
      // };
      console.log($scope.faqs[0].faqVisible);
    };

    $scope.toggleVisible = function(inputIndex) {
      $scope.questions[inputIndex].quesVisible = !$scope.questions[inputIndex].quesVisible;
    };

    $scope.faqToggleVisible = function(inputIndex) {
      $scope.faqs[inputIndex].answerVisible = !$scope.faqs[inputIndex].answerVisible;
    };

    $scope.getAway = function() {
      window.open('http://weather.com', '_newtab');
      window.location.replace('http://google.com');
    };

    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    });

    window.$scope = $scope;

  }]);
