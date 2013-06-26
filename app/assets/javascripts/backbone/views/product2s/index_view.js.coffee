Housing.Views.Product2s ||= {}

class Housing.Views.Product2s.IndexView extends Backbone.View
  template: JST["backbone/templates/product2s/index"]

  initialize: () ->
    @options.product2s.bind('reset', @addAll)

  addAll: () =>
    @options.product2s.each(@addOne)

  addOne: (product2) =>
    view = new Housing.Views.Product2s.Product2View({model : product2})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(product2s: @options.product2s.toJSON() ))
    @addAll()

    return this
