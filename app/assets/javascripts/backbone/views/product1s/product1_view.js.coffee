Housing.Views.Product1s ||= {}

class Housing.Views.Product1s.Product1View extends Backbone.View
  template: JST["backbone/templates/product1s/product1"]

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
