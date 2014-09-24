class CreateVotes < ActiveRecord::Migration
  def up
    create_table :votes do |t|
      t.integer :post_id
      t.string :direction
    end
  end

  def down
    drop_table :votes
  end
end
