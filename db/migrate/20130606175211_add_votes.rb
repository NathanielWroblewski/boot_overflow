class AddVotes < ActiveRecord::Migration
  def up
    add_column :users, :up_votes, :integer, :null => false, :default => 0
    add_column :users, :down_votes, :integer, :null => false, :default => 0
    add_column :questions, :up_votes, :integer, :null => false, :default => 0
    add_column :questions, :down_votes, :integer, :null => false, :default => 0
  end

  def down
    drop_column :users, :up_votes, :integer, :null => false, :default => 0
    drop_column :users, :down_votes, :integer, :null => false, :default => 0
    drop_column :questions, :up_votes, :integer, :null => false, :default => 0
    drop_column :questions, :down_votes, :integer, :null => false, :default => 0
  end
end
