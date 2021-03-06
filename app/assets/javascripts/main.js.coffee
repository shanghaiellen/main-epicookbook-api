'use strict'

@epicookbook.config([
  "$routeProvider",
  "$locationProvider",
  ($routeProvider, $locationProvider) ->
    
    $routeProvider

    .when("/login",
      # templateUrl: "<%= asset_path('../templates/user/login.html') %>"
      templateUrl: "/templates/user/login.html"
      public: true
      login: true
    )

    .when("/signup",
      templateUrl: "/templates/user/signup.html"
      public: true
    )

    .when("/profile",
      templateUrl: "/templates/user/profile.html"
    )

    .when("/verify-email",
      templateUrl: "/templates/user/verify-email.html"
      verify_email: true
    )

    .when("/reset-password",
      templateUrl: "/templates/user/reset-password.html"
      public: true
    )

    .when("/set-password",
      templateUrl: "/templates/user/set-password.html"
      set_password: true
    )

    .when("/recipe/new",
      templateUrl: "/templates/recipe/new.html"
      controller: "NewRecipeCtrl"
    )

    .when("/recipes",
      templateUrl: "/templates/recipe/index.html"
      controller: "RecipesCtrl"
      public: true
    )

    .when("/recipes/:page",
      templateUrl: "/templates/recipe/index.html"
      controller: "RecipesCtrl"
      public: true
    )

    .when("/recipe/:recipeId",
      templateUrl: "/templates/recipe/show.html"
      controller: "RecipeCtrl"
      public: true
    )

    .when("/filter/new",
      templateUrl: "/templates/filter/new.html"
      controller: "NewFilterCtrl"
    )

    .when("/filter/:filterId",
      templateUrl: "/templates/filter/show.html"
      controller: "FilterCtrl"
    )

    .when("/search/:recipeQuery",
      templateUrl: "/templates/search.html"
      controller: "SearchCtrl"
      public: true
    )

    .when("/search/:recipeQuery/:filters",
      templateUrl: "/templates/search.html"
      controller: "SearchCtrl"
      public: true
    )

    .when("/logout",
      templateUrl: "/templates/user/logout.html"
      public: true
    )

    .when("/product-plan",
      templateUrl: "/templates/product-plan.html"
      public: true
    )

    .when('/#/',
      templateUrl: "/templates/home.html"
      public: true
    )

    .otherwise(
      redirectTo: '/#/'
      public: true
    )
])

.run ($rootScope, user) ->
  user.init appId: "5339e04524d20"
  return
$locationProvider
  .html5Mode(true);  