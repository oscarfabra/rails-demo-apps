class Comment < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  belongs_to :post
  belongs_to :user
  
  def created_by
    User.find(user_id).username
  end

  def created_by_profile
    User.find(user_id).user_profile
  end
end
