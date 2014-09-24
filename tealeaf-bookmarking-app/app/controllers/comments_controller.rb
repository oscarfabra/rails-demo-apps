class CommentsController < ApplicationController
  before_filter :require_user, except: [:index, :show]
  
  def index

  end
  
  def show
    
  end
  
  def create
    post = Post.find(params[:post_id])
    post.comments.create(params[:comment])
    redirect_to post_path(post)
  end
end