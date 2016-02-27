'use strict';

describe('Service: questionnaireChoices', function () {

  // load the service's module
  beforeEach(module('jmlApiApp'));

  // instantiate service
  var questionnaireChoices;
  beforeEach(inject(function (_questionnaireChoices_) {
    questionnaireChoices = _questionnaireChoices_;
  }));

  it('should do something', function () {
    expect(!!questionnaireChoices).toBe(true);
  });

});
