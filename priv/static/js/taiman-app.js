var rentemApp = angular.module('rentem', []);

rentemApp.config(
    function ($interpolateProvider) {
      $interpolateProvider.startSymbol('[[');
      $interpolateProvider.endSymbol(']]');
    });