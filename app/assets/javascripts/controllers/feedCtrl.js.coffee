feedCtrl = angular.module "feedCtrl", []

feedCtrl.controller 'feedCtrl', ["$scope", "Entry" 
  ($scope, Entry) ->
    $scope.entries = Entry.query()

    
]


  # render template to create entry
  # create an entry
  


  # vote on an entry
  

  # comment on entry

