Housing.Views.Product2s ||= {}

class Housing.Views.Product2s.ShowView extends Backbone.View
  template: JST["backbone/templates/product2s/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
