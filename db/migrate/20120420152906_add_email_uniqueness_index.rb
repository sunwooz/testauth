class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :beta, :email, :unique => true
  end

  def self.down
    remove_index :beta, :email
  end
end
