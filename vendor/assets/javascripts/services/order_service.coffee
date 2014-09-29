ngSpree.factory 'SpreeOrder', ['$http', ($http) ->
  $http.defaults.headers.common['X-Spree-Order-Token'] = gon.current_order.guest_token

  new_order_url = ->
    "/api/orders"

  new_order = ->
    $http(
      method: "POST",
      url: new_order_url(),
      headers: { 'X-Spree-Order-Token': gon.current_order.guest_token }
    ).success((data) ->
      gon.current_order = data
    ).error (data, status, header, config) ->
      gon.current_order = {
        title: "Error:",
        description: "Please ensure that you are connected to the internet or try again in a few minutes."
      }

  current_order: ->
    if !gon.current_order.number
      new_order()
    else
      gon.current_order
]
