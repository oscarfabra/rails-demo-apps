class Post < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :vote_number
  
  validates :title, presence: true
  validates :title, length: { minimum: 2 }
  validates :url, presence: true
  
  has_many :comments
  has_many :votes
  belongs_to :user

  def initialize
    super
    @vote_number = votes.where(direction: "up").count - votes.where(direction: "down").count
  end

  def vote_number
    @vote_number = votes.where(direction: "up").count - votes.where(direction: "down").count
    post = Post.find(self.id)
    post.vote_number = @vote_number
    post.save
    return @vote_number
  end
    
  def created_by
    User.find(user_id).username
  end

  def created_by_profile
    User.find(user_id).user_profile
  end
end
