class Housing.Routers.Product1sRouter extends Backbone.Router
  initialize: (options) ->
    @product1s = new Housing.Collections.Product1sCollection()
    @product1s.reset options.product1s

  routes:
    "new"      : "newProduct1"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newProduct1: ->
    @view = new Housing.Views.Product1s.NewView(collection: @product1s)
    $("#product1s").html(@view.render().el)

  index: ->
    @view = new Housing.Views.Product1s.IndexView(product1s: @product1s)
    $("#product1s").html(@view.render().el)

  show: (id) ->
    product1 = @product1s.get(id)

    @view = new Housing.Views.Product1s.ShowView(model: product1)
    $("#product1s").html(@view.render().el)

  edit: (id) ->
    product1 = @product1s.get(id)

    @view = new Housing.Views.Product1s.EditView(model: product1)
    $("#product1s").html(@view.render().el)
