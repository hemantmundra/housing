class Post < ActiveRecord::Base
  attr_accessible :category, :name, :price, :quantity
end
