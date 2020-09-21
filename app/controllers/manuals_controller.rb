class ManualsController < ApplicationController
  def index
    @manuals = Manual.all
  end

  def new
    @manual = Manual.new
  end

  def create
    Manual.create(manual_params)
  end

  private

  def manual_params
    params.require(:manual).permit(:title, :image, :explanation)
  end
end
