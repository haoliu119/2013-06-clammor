class Subscription < ActiveRecord::Base
  # TODO Implement Subscription associations. See subscription_spec.rb for specification.
  belongs_to :user
  belongs_to :group

  attr_accessible :renew_date

  validate :renew_date_is_valid_datetime
  # TODO Implement a Subscription custom validation. See subscription_spec.rb for specification.
  
  def renew_date_is_valid_datetime
    # binding.pry
  
    unless DateTime.parse(self.renew_date)
      binding.pry
    end
  end
end