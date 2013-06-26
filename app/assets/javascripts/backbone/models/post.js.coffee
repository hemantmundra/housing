class Housing.Models.Post extends Backbone.Model
  paramRoot: 'post'



class Housing.Collections.PostsCollection extends Backbone.Collection
  model: Housing.Models.Post
  url: '/posts'
