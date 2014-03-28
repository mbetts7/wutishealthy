feedCtrl = angular.module "feedCtrl", ["ui.bootstrap"]

feedCtrl.controller 'feedCtrl', ["$scope", "Entry", "$http" 
  ($scope, Entry, $http) ->
    
    # Convert model query resource object into an array.  This way we can push objects onto it for DOM manipulation.
    Entry.query (data) ->
      $scope.entries = []
      angular.forEach data, (entry, index) ->
        $scope.entries.push entry

    $scope.linkChecker = () ->
      readability_api_link = "https://www.readability.com/api/content/v1/parser?url=" + $scope.link.url + "&token=bdaa7809dc9a543000fe05d937148acd74eb3d76" + "&callback=JSON_CALLBACK"
      $http(
        method: "jsonp"
        url: readability_api_link
      ).success((data) ->
        console.log(data)
        $scope.link_info = data
      ).error (data) ->
        console.log(data)
        $scope.theStatus = "error"

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
      saved_entry = Entry.save(entry)
      $scope.entries.unshift saved_entry
      console.log(entry)
      # grab object from link checker and question submitted
      # append object to DOM
    $scope.cancel = ->
      $scope.createEntryModal = false

    $scope.voteYes = (entry) ->
      entry.vote_total = entry.vote_total || 0
      entry.vote_yes = entry.vote_yes || 0
      entry.vote_total += 1
      entry.vote_yes +=1
      console.log "yes votes: " + entry.vote_yes
      console.log "no votes: " + entry.vote_no
      console.log entry
      Entry.update {id: entry.id}, entry

    $scope.voteNo = (entry) ->
      entry.vote_total = entry.vote_total || 0
      entry.vote_no = entry.vote_no || 0
      entry.vote_total += 1
      entry.vote_no +=1
      console.log "yes votes: " + entry.vote_yes
      console.log "no votes: " + entry.vote_no
      console.log entry
      # Entry.update(entry)
]