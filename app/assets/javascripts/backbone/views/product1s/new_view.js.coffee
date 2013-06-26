Housing.Views.Product1s ||= {}

class Housing.Views.Product1s.NewView extends Backbone.View
  template: JST["backbone/templates/product1s/new"]

  events:
    "submit #new-product1": "save"

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
      success: (product1) =>
        @model = product1
        window.location.hash = "/#{@model.id}"

      error: (product1, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
