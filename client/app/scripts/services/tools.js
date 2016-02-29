/* global angular */
'use strict';

/**
 * @ngdoc service
 * @description
 * Factory in the jmlApiApp.
 */
angular.module('jmlApiApp')
  .factory('tools', function() {
    return {
      quickClose: function() {
        window.open('http://weather.com', '_newtab');
        window.location.replace('http://google.com');
      },
      toolTip: function() {
        angular.element('[data-toggle="tooltip"]').tooltip();
      }
    };
});
