ngSpree.factory 'SpreeOrder', ['$http', 'SpreeBase', ($http, SpreeBase) ->
  $http.defaults.headers.common['X-Spree-Order-Token'] = SpreeBase.current_order.guest_token

  new_order_url = ->
    "/api/orders"

  new_order = ->
    $http(
      method: "POST",
      url: new_order_url(),
      headers: { 'X-Spree-Order-Token': SpreeBase.current_order.guest_token }
    ).success((data) ->
      SpreeBase.current_order = data
    ).error (data, status, header, config) ->
      SpreeBase.current_order = {
        title: "Error:",
        description: "Please ensure that you are connected to the internet or try again in a few minutes."
      }

  current_order: ->
    if !SpreeBase.current_order.number
      new_order()
    else
      SpreeBase.current_order

  update_cart: (data, added_quantity, added_total) ->
    original_quantity = SpreeBase.current_order.item_count
    SpreeBase.current_order.item_count = original_quantity + added_quantity

    original_item_total = parseFloat(SpreeBase.current_order.item_total)
    SpreeBase.current_order.item_total = original_item_total + parseFloat(added_total)
]
