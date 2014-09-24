class PostsController < ApplicationController
  before_filter :require_user, only: [:new, :create, :edit, :update, :destroy]
  
  # GET /posts
  # GET /posts.json
  def index
    @all_posts = Post.order("vote_number desc")
    @posts = @all_posts.page(params[:page]).per(4)
    #@posts.sort!{|a,b| b.vote_number <=> a.vote_number}
    
  end
  
  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post]) # {url: 'google.com', title: 'Buscador!'}
    if @post.save
      redirect_to @post, notice: 'El link se creo satisfactoriamente'
    else
      render action: "new"
    end
  end
end