class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_one :status
  has_many :posts

  has_many :subscriptions
  has_many :groups, :through => :subscriptions

  has_many :comments

  validates :name, :presence => true
  validates :email, :uniqueness => true, :format => { :with => /\w+@\w+\.(com|net|org)/ } 
end