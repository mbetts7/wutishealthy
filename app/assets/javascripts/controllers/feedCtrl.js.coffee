feedCtrl = angular.module "feedCtrl", ["ui.bootstrap"]

feedCtrl.controller 'feedCtrl', ["$scope", "Entry", "$modal" 
  ($scope, Entry, $modal) ->
    $scope.entries = Entry.query()

    # Modal basic functionality
    $scope.createEntry = false
    $scope.open = ->
      $scope.createEntry = true
    $scope.submit = ->
      $scope.createEntry = false
    $scope.cancel = ->
      $scope.createEntry = false

]