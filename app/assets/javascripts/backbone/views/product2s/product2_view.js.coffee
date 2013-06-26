Housing.Views.Product2s ||= {}

class Housing.Views.Product2s.Product2View extends Backbone.View
  template: JST["backbone/templates/product2s/product2"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
