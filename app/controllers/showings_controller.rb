class ShowingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @showings = Showing.all
    @showings = @showings.where(film_id: params[:film_id]) if params[:film_id].present?
  end

  def show
    @showing = Showing.find(params[:id])
  end

  def check_availability
    @showing = Showing.find(params[:showing_id])
    @available_seats = @showing.available_seats(params[:movie_date])
  end
end
