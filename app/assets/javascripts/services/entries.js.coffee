EntryService = angular.module "EntryService", ["ngResource"]

EntryService.factory "Entry", [ "$resource",
  ($resource) ->
    return $resource "/entries/:id.json",
        id: "@id"
      ,
        update:
          method: "PATCH"
]

EntryService.config ["$httpProvider",
  ($httpProvider)->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]