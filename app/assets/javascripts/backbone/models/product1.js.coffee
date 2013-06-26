class Housing.Models.Product1 extends Backbone.Model
  paramRoot: 'product1'

  defaults:
    name: null
    categoryies: null
    price: null
    quantity: null

class Housing.Collections.Product1sCollection extends Backbone.Collection
  model: Housing.Models.Product1
  url: '/product1s'
