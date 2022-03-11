class Port < ApplicationRecord
    enum port_section: { niigata_port: 0, ryoutu_port: 1 }
end
