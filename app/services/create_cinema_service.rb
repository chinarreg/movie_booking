class CreateCinemaService
  def call
    # creating 1st cinema hall with 160 seats
    cinema_1 = CinemaHall.find_or_create_by!(name: "Cinema 1")
    [1..160].each do |num|
      cinema_1.seats.create(seat_number: "seat #{num}")
    end
    Showing.show_timings.values.each do |show_timing|
      cinema_1.showings.create(ticket_price: 100, show_timing: show_timing, film: "Film 1")
    end

    # creating 2nd cinema hall with 30 seats
    cinema_2 = CinemaHall.find_or_create_by!(name: "Cinema 2")
    [1..30].each do |num|
      cinema_2.seats.create(seat_number: "luxury seat #{num}")
    end
    Showing.show_timings.values.each do |show_timing|
      cinema_2.showings.create(ticket_price: 350, show_timing: show_timing, film: "Film 2")
    end
  end
end
