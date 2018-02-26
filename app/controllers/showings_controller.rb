class ShowingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @showings = Showing.all
  end

  def show
    @showing = Showing.find(params[:id])
  end
end
