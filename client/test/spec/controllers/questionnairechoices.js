'use strict';

describe('Controller: QuestionnairechoicesCtrl', function () {

  // load the controller's module
  beforeEach(module('jmlApiApp'));

  var QuestionnairechoicesCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    QuestionnairechoicesCtrl = $controller('QuestionnairechoicesCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(QuestionnairechoicesCtrl.awesomeThings.length).toBe(3);
  });
});
