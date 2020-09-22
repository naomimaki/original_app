class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if@user.valid?
      @user.save
      redirect_to posts_path
    else
      render 'new'
    end
  end
end
