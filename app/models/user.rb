class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
  # TODO implement association for User model. See user_spec.rb for specification.
  has_many :posts
  has_many :comments
  has_one :status, :dependent => :destroy

  has_many :subscriptions
  has_many :groups, :through => :subscriptions
  has_many :friends

  attr_accessible :name, :email

  # TODO Implement validation for User model. See user_spec.rb for specification.
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true, email: true

  # TODO Implement an after_create callback -- welcome_status
  after_create :welcome_status

  def welcome_status
    # TODO Should create a new Status after a user is created.  See user_spec.rb for more tips 
    self.create_status!({:content => "I just joined Clammor!"})
  end
end