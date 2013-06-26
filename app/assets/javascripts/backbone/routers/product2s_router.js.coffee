class Housing.Routers.Product2sRouter extends Backbone.Router
  initialize: (options) ->
    @product2s = new Housing.Collections.Product2sCollection()
    @product2s.reset options.product2s

  routes:
    "new"      : "newProduct2"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newProduct2: ->
    @view = new Housing.Views.Product2s.NewView(collection: @product2s)
    $("#product2s").html(@view.render().el)

  index: ->
    @view = new Housing.Views.Product2s.IndexView(product2s: @product2s)
    $("#product2s").html(@view.render().el)

  show: (id) ->
    product2 = @product2s.get(id)

    @view = new Housing.Views.Product2s.ShowView(model: product2)
    $("#product2s").html(@view.render().el)

  edit: (id) ->
    product2 = @product2s.get(id)

    @view = new Housing.Views.Product2s.EditView(model: product2)
    $("#product2s").html(@view.render().el)
