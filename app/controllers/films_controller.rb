class FilmsController < ApplicationController
  before_action :authenticate_user!

  def show
    @film = Film.find_by(slug: params[:slug])
  end
end
