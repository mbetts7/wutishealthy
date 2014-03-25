wutIsHealthyApp = angular.module "wutIsHealthy", []

@feedCtrl = ["$scope", ($scope) ->
  $scope.entries = [
    {img: "https://s3.amazonaws.com/WutIsHealthy/nutrition_label_1.jpg", 
    links: "http://www.alz.org/alzheimers_disease_facts_and_figures.asp#quickFacts", 
    question: "Is this healthy?",
    answers: [a: "healthy", b: "false"] 
    }
    
    {img: "https://s3.amazonaws.com/WutIsHealthy/sugar_words.jpg", 
    links: null, 
    question: "Are these all unhealthy?",
    answers: [a: "healthy", b: "false"]
    }

    {img: null, 
    links: "http://www.boston.com/lifestyle/health/blogs/daily-dose/2014/03/19/new-study-fuels-debate-dietary-fats-and-heart-disease/ni2udnGRteJ4DGuamv0VCL/blog.html", 
    question: "Are these all unhealthy?",
    answers: [a: "healthy", b: "false"]
    }
  ]
]

wutIsHealthyApp.controller "feedCtrl", feedCtrl