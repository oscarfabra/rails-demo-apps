class AddVoteNumberToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :vote_number, :integer
  end
end
