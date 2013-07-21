class Comment < ActiveRecord::Base
  # TODO Implement Comment associations. See comment_spec.rb for specification.
  belongs_to :post
  belongs_to :user

  attr_accessible :content

  # TODO Implement Comment validations. See comment_spec.rb for specification.

end
