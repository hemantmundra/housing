Housing.Views.Product1s ||= {}

class Housing.Views.Product1s.ShowView extends Backbone.View
  template: JST["backbone/templates/product1s/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
