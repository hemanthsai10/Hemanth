angular.module('AngularRails')
    .controller('HomeCtrl', function ($scope) {
        $scope.things = ['Angular', 'Rails 4.2.5', 'Working', 'Together!!'];
    });