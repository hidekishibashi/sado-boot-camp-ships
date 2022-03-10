class ReservationController < ApplicationController
  def index
    render template: "reservation/index"
  end
end