class AddVotecountToVotes < ActiveRecord::Migration
  def change
      add_column(:links, :voteCount, :integer, :default => 0)
  end
end
