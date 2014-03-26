feedCtrl = angular.module "feedCtrl", ["ui.bootstrap"]

feedCtrl.controller 'feedCtrl', ["$scope", "Entry", "$modal" 
  ($scope, Entry, $modal) ->
    $scope.entries = Entry.query()

    $scope.open = ->
      $scope.createEntryModal = true

    return
]