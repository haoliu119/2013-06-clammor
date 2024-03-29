# Put your database migration here!
#
# Each one needs to be named correctly:
# timestamp_[action]_[class]
#
# and once a migration is run, a new one must
# be created with a later timestamp.

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
    end

    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user
    end

    create_table :comments do |t|
      t.text :content
      t.references :post
      t.references :user
    end

    create_table :statuses do |t|
      t.string :content
      t.references :user
    end

    create_table :subscriptions do |t|
      t.references :user
    end

    create_table :groups do |t|
    end
  end
end