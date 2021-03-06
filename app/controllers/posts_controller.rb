class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  private
  def post_params
    params.require(:post).permit( :name, :greeting, :image).merge(user_id: current_user.id)
  end
  # イメージをストロングパラメーターに設定
end
