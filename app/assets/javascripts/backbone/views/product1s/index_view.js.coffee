Housing.Views.Product1s ||= {}

class Housing.Views.Product1s.IndexView extends Backbone.View
  template: JST["backbone/templates/product1s/index"]

  initialize: () ->
    @options.product1s.bind('reset', @addAll)

  addAll: () =>
    @options.product1s.each(@addOne)

  addOne: (product1) =>
    view = new Housing.Views.Product1s.Product1View({model : product1})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(product1s: @options.product1s.toJSON() ))
    @addAll()

    return this
