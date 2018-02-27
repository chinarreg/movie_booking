class VisitorsController < ApplicationController
  def index
    @films = Film.all
  end
end
