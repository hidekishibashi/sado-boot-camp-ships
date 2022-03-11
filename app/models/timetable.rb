class Timetable < ApplicationRecord
    def converted_info
        return "#{format_time(self.departure_time)} -> #{format_time(self.arrival_time)}(#{arrival_port_name}着) #{ship_name}"
    end

    def ship_section
        Ship.find(self.ship_id).ship_section
    end

    private

    def format_time datetime
        datetime.strftime('%H:%M')
    end

    def arrival_port_name
        Port.find(self.arrival_port_id).name
    end

    def ship_name
        ship = Ship.find(self.ship_id)
        return '' if ship.jetfoil?
        ship.name
    end
end
