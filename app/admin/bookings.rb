ActiveAdmin.register Booking do
  permit_params :user_id, :showing_id, :total_price, :booking_date
end
