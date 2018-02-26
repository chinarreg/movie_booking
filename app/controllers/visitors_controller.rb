class VisitorsController < ApplicationController
  def index
    @showings = Showing.all
  end
end
