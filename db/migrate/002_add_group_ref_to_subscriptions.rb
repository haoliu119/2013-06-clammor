# Put your database migration here!
#
# Each one needs to be named correctly:
# timestamp_[action]_[class]
#
# and once a migration is run, a new one must
# be created with a later timestamp.

class AddGroupRefToSubscriptions < ActiveRecord::Migration
  def change
    change_table :subscriptions do |t|
      t.references :group
    end
  end
end