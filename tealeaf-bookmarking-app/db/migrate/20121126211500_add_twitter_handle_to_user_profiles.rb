class AddTwitterHandleToUserProfiles < ActiveRecord::Migration
  def change
    add_column :user_profiles, :twitter_handle, :string
  end
end
