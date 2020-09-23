class SharesController < ApplicationController
  def index
  end

  def index
    @shares = Share.all
    @share = Share.new
  end


  def create
   @share = Share.create(share_params)
    if @share.valid?
      @share.save
      redirect_to shares_path
    else
      render 'index'
    end
  end

  private
  def share_params
    params.require(:share).permit(:date, :name, :explanation).merge(user_id: current_user.id)
  end
end
