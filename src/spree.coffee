"use strict"

angular.module("Spree.api", []).directive "orders", [->
  restrict: "A"
  scope: {}

  # replace: true,
  template: (element, attrs) ->
    defaultsAttrs = {}
    for xx of defaultsAttrs
      attrs[xx] = defaultsAttrs[xx]  if attrs[xx] is `undefined`
    html = "<div>"
    html += "</div>"
    html

  link: (scope, element, attrs) ->

  controller: ($scope, $element, $attrs) ->
]
