Housing.Views.Product1s ||= {}

class Housing.Views.Product1s.EditView extends Backbone.View
  template : JST["backbone/templates/product1s/edit"]

  events :
    "submit #edit-product1" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (product1) =>
        @model = product1
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
