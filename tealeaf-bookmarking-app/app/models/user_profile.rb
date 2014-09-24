class UserProfile < ActiveRecord::Base
  attr_accessible :full_name, :user_id, :twitter_handle

  belongs_to :user

  def recent_posts num
  	Post.where("user_id = ?", self.id).limit(num)
  end

  def recent_comments num
  	Comment.where("user_id = ?", self.id).limit(num)
  end

  def recent_votes num
  	Vote.where("user_id = ?", self.id).limit(num)
  end

  def recent_tweets num
    @@twitter_client.user_timeline(:twitter_handle)[0..num-1]
  end

end
