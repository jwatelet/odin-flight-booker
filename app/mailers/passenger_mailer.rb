class PassengerMailer < ApplicationMailer
  default from: 'notifications@odin-flight-booker.com'

  def confirmation_email(passenger)
    @passenger = passenger
    @flight = passenger.flight
    mail(to: @passenger.email, subject: 'Booking confirmation')
  end
end
