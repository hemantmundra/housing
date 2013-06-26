Housing.Views.Product2s ||= {}

class Housing.Views.Product2s.NewView extends Backbone.View
  template: JST["backbone/templates/product2s/new"]

  events:
    "submit #new-product2": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (product2) =>
        @model = product2
        window.location.hash = "/#{@model.id}"

      error: (product2, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
