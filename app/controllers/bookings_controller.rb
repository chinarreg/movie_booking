class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = current_user.bookings.new
    @showing = Showing.find(params[:showing_id])
  end

  def create
    begin
      @booking = current_user.bookings.new(booking_params)
      showing = Showing.find(params[:booking][:showing_id])
      showing.available_seats(params[:booking][:booking_date]).first(params[:booking][:no_of_tickets].to_i).each do |seat|
        @booking.booking_seats.build(seat_id: seat.id, booking_date: params[:booking][:booking_date], showing_id: params[:booking][:showing_id])
      end
      if @booking.save
        redirect_to bookings_path, notice: 'Seats booked succesfully.'
      else
        redirect_to new_booking_path(showing_id: showing.id), alert: @booking.errors.full_messages.first
      end
    rescue Exception => ex
      logger.info ex.message
      redirect_to root_path, alert: ex.message
    end    
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :showing_id, :total_price, :booking_date, :no_of_tickets)
  end
end
