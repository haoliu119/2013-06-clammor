class Group < ActiveRecord::Base
  # TODO Implement Group associations. See group_spec.rb for specification.
  has_many :subscriptions
  has_many :users, :through => :subscriptions

  attr_accessible :name
  # TODO Implement Group validations. See group_spec.rb for specification.
  validates :name, uniqueness: true
  validates :motto, presence: true
end
