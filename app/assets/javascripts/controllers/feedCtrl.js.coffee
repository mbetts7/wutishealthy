feedCtrl.controller 'feedCtrl', ["$scope", "Entry" 
  ($scope, Entry) ->
    $scope.entries = Entry.query()
]

