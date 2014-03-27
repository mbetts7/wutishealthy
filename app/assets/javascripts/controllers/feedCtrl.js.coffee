feedCtrl = angular.module "feedCtrl", ["ui.bootstrap"]

feedCtrl.controller 'feedCtrl', ["$scope", "Entry", "$http" 
  ($scope, Entry, $http) ->
    $scope.entries = Entry.query()

    $scope.linkChecker = () ->
      readability_api_link = "https://www.readability.com/api/content/v1/parser?url=" + $scope.link + "&token=bdaa7809dc9a543000fe05d937148acd74eb3d76"
      console.log(readability_api_link)
      $http.get(readability_api_link)
      .success(data, status, header, config)
      console.log(data)
        # if 200-299 success code then show green ng-style
        # grab object and store it in variable for use in save
      .error(data, status, header, config)
      console.log(data)
        # show error / alert and red box, don't allow submit

    # Modal basic functionality
    $scope.createEntry = false
    $scope.open = ->
      $scope.createEntry = true
    $scope.submit = () ->
      # grab object from link checker and question submitted
      # append object to DOM
    $scope.cancel = ->
      $scope.createEntry = false

]

# feedCtrl.config ["$httpProvider",
#  ($httpProvider)->
#    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
#]