class ReserveController < ApplicationController
    def index
      
      @ports = Port.all
      
      render :index
    end
    
    def test
      niigata_port = Port.find_by(name: '新潟')
      ryoutu_port = Port.find_by(name: '両津')

      tokiwamaru = Ship.find_by(name: 'ときわ丸')
      okesamaru = Ship.find_by(name: 'おけさ丸')
      jetfoil = Ship.find_by(name: 'ジェットフォイル')

      @timetable_car_ferry_from_niigata = Timetable.where(departure_port_id: niigata_port.id, ship_id: [tokiwamaru.id, okesamaru.id] )
      @timetable_jetfoil_from_niigata = Timetable.where(departure_port_id: niigata_port.id, ship_id: jetfoil.id)
      @timetable_car_ferry_from_ryoutu = Timetable.where(departure_port_id: ryoutu_port.id, ship_id: [tokiwamaru.id, okesamaru.id] )
      @timetable_jetfoil_from_ryoutu = Timetable.where(departure_port_id: ryoutu_port.id, ship_id: jetfoil.id)

      @car_ferry_ship_class = ShipClass.where(ship_section: :car_ferry)
      @jetfoil_ship_class = ShipClass.where(ship_section: :jetfoil)

      render :test


    end

    def new
      @reservation_details = ReservationDetail.new

      
    end

    def create
      @reservation_details = ReservationDetail.new(reservation_details_params)
    end

    def reservation_details_params
      params.require(:reservation_details).permit()
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_high_score
    @reservation_details = ReservationDetail.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
=begin
  def high_score_params
    params.require(:reservation_details).permit(
      reserve_id: 1,
      route_section: ,
      use_day: ,
      timetable_id: ,
      ship_class_id: ,
      price: ,
      adult_reservation_number: ,
      child_reservation_number: ,
      infant_reservation_number: ,
      baby_reservation_number: 
    )
  end
=end
