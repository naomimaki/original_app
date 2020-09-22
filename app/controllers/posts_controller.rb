class PostsController < ApplicationController
  def index
    # ここ考えよう。。。
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
    params.require(:post).permit( :name, :greeting, :image)
  end
  # イメージをストロングパラメーターに設定
end
