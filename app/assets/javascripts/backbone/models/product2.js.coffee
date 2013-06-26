class Housing.Models.Product2 extends Backbone.Model
  paramRoot: 'product2'

  defaults:
    name: null
    categoryies: null
    price: null
    quantity: null

class Housing.Collections.Product2sCollection extends Backbone.Collection
  model: Housing.Models.Product2
  url: '/product2s'
