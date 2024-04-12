module BookingsHelper
  def add_passenger(booking)
    link_to new_booking_path(flight_id: booking.flight_id, passengers: booking.passengers.length + 1), class: "add" do
      image_tag 'account-plus.svg'
    end
  end

  def remove_passenger(booking)
    link_to new_booking_path(flight_id: booking.flight_id, passengers: booking.passengers.length - 1), class: "remove" do
      image_tag 'account-remove.svg'
    end
  end
end
