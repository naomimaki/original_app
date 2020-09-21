class SharesController < ApplicationController
  def index
  end

  def index
    @shares = Share.all
    @share = Share.new
  end


end
