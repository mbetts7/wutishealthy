feedCtrl = angular.module "feedCtrl", ["ui.bootstrap"]

feedCtrl.controller 'feedCtrl', ["$scope", "Entry", "$http" 
  ($scope, Entry, $http) ->
    $scope.entries = Entry.query()

    $scope.linkChecker = () ->
      # if $scope.link.url.$valid
      readability_api_link = "https://www.readability.com/api/content/v1/parser?url=" + $scope.link.url + "&token=bdaa7809dc9a543000fe05d937148acd74eb3d76" + "&callback=JSON_CALLBACK"
      $http(
        method: "jsonp"
        url: readability_api_link
      ).success((data) ->
        console.log(data)
        $scope.link_info = data
        # if 200-299 success code then show green ng-style
        # grab object and store it in variable for use in save
      ).error (data) ->
        console.log(data)
        $scope.theStatus = "error"
        # show error / alert and red box, don't allow submit

    # Modal basic functionality
    $scope.open = ->
      $scope.createEntryModal = true
    $scope.submit = () ->
      entry = {}
      entry.readability_title = $scope.link_info.title
      entry.readability_domain = $scope.link_info.domain
      entry.readability_excerpt = $scope.link_info.excerpt
      entry.readability_word_count = $scope.link_info.word_count
      entry.readability_short_url = $scope.link_info.short_url
      entry.question = $scope.question
      Entry.save(entry)
      console.log(entry)
      # grab object from link checker and question submitted
      # append object to DOM
    $scope.cancel = ->
      $scope.createEntryModal = false

    $scope.voteYes = (entry) ->
      entry.votes = entry.votes || {}
      entry.votes.total = entry.votes.total || 0
      entry.votes.yes = entry.votes.yes || 0
      entry.votes.total += 1
      entry.votes.yes +=1

      console.log "yes votes: " + entry.votes.yes
      console.log "no votes: " + entry.votes.no

    $scope.voteNo = (entry) ->
      entry.votes = entry.votes || {}
      entry.votes.total = entry.votes.total || 0
      entry.votes.no = entry.votes.no || 0
      entry.votes.total += 1
      entry.votes.no +=1
      entry.votes.no_percentage = 100 - entry.votes.yes_percentage
      console.log "yes votes: " + entry.votes.yes
      console.log "no votes: " + entry.votes.no
]