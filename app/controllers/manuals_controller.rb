class ManualsController < ApplicationController
  def index
    @manuals = Manual.all
  end

  def new
    @manual = Manual.new
  end

  def create
    @manual = Manual.new(manual_params)
    if @manual.valid?
      @manual.save
      redirect_to manuals_path
    else
      render 'new'
    end
  end

  private

  def manual_params
    params.require(:manual).permit(:title, :image, :explanation).merge(user_id: current_user.id)
  end
end
