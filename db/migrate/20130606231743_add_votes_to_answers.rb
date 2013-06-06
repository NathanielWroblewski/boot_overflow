class AddVotesToAnswers < ActiveRecord::Migration
  def up
    add_column :answers, :up_votes, :integer, :null => false, :default => 0
    add_column :answers, :down_votes, :integer, :null => false, :default => 0
  end

  def down
    drop_column :answers, :up_votes, :integer, :null => false, :default => 0
    drop_column :answers, :down_votes, :integer, :null => false, :default => 0
  end
end
