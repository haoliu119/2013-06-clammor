# Put your database migration here!
#
# Each one needs to be named correctly:
# timestamp_[action]_[class]
#
# and once a migration is run, a new one must
# be created with a later timestamp.

class UpdateGroups < ActiveRecord::Migration
  def change
    change_table :groups do |t|
      t.string :name
      t.string :motto
    end
  end
end