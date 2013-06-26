Housing.Views.Product2s ||= {}

class Housing.Views.Product2s.EditView extends Backbone.View
  template : JST["backbone/templates/product2s/edit"]

  events :
    "submit #edit-product2" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (product2) =>
        @model = product2
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
