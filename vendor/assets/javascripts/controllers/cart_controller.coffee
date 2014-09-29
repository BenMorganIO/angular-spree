ngSpree.controller 'CartCtrl', ['$scope', '$http', 'SpreeOrder', ($scope, $http, SpreeOrder) ->
  $scope.current_order = SpreeOrder.current_order()
  $scope.cart_class = ->
    if SpreeOrder.current_order().item_count == 0 then "empty" else "full"
  $scope.cart_empty = ->
    if $scope.cart_class() == "empty" then true else false
]
