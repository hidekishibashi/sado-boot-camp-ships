# This file should contain all the record creation needed to a the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  niigata_port = Port.create!(name: '新潟')
  ryoutu_port = Port.create!(name: '両津')
  


  tokiwamaru = Ship.create!(name: 'ときわ丸',ship_section: :car_ferry)
  okesamaru = Ship.create!(name: 'おけさ丸',ship_section: :car_ferry)
  jetfoil = Ship.create!(name: 'ジェットフォイル', ship_section: :jetfoil)

  Timetable.create!( departure_port_id: niigata_port.id, departure_time: '06:00', arrival_port_id: ryoutu_port.id, arrival_time: '08:30', ship_id: tokiwamaru.id)
  Timetable.create!( departure_port_id: niigata_port.id, departure_time: '09:20', arrival_port_id: ryoutu_port.id, arrival_time: '11:50', ship_id: okesamaru.id)
  Timetable.create!( departure_port_id: niigata_port.id, departure_time: '12:35', arrival_port_id: ryoutu_port.id, arrival_time: '15:05', ship_id: tokiwamaru.id)
  Timetable.create!( departure_port_id: niigata_port.id, departure_time: '16:00', arrival_port_id: ryoutu_port.id, arrival_time: '18:30', ship_id: okesamaru.id)
  Timetable.create!( departure_port_id: niigata_port.id, departure_time: '19:30', arrival_port_id: ryoutu_port.id, arrival_time: '22:00', ship_id: tokiwamaru.id)

  Timetable.create!( departure_port_id: ryoutu_port.id, departure_time: '05:30', arrival_port_id: niigata_port.id, arrival_time: '08:00', ship_id: tokiwamaru.id)
  Timetable.create!( departure_port_id: ryoutu_port.id, departure_time: '09:15', arrival_port_id: niigata_port.id, arrival_time: '11:45', ship_id: okesamaru.id)
  Timetable.create!( departure_port_id: ryoutu_port.id, departure_time: '12:40', arrival_port_id: niigata_port.id, arrival_time: '15:10', ship_id: tokiwamaru.id)
  Timetable.create!( departure_port_id: ryoutu_port.id, departure_time: '16:05', arrival_port_id: niigata_port.id, arrival_time: '18:35', ship_id: okesamaru.id)
  Timetable.create!( departure_port_id: ryoutu_port.id, departure_time: '19:30', arrival_port_id: niigata_port.id, arrival_time: '22:00', ship_id: tokiwamaru.id)

  Timetable.create!( departure_port_id: niigata_port.id, departure_time: '07:55', arrival_port_id: ryoutu_port.id, arrival_time: '09:02', ship_id: jetfoil.id)
  Timetable.create!( departure_port_id: niigata_port.id, departure_time: '12:50', arrival_port_id: ryoutu_port.id, arrival_time: '14:02', ship_id: jetfoil.id)
  Timetable.create!( departure_port_id: niigata_port.id, departure_time: '16:20', arrival_port_id: ryoutu_port.id, arrival_time: '17:27', ship_id: jetfoil.id)

  Timetable.create!( departure_port_id: ryoutu_port.id, departure_time: '07:20', arrival_port_id: niigata_port.id, arrival_time: '08:27', ship_id: jetfoil.id)
  Timetable.create!( departure_port_id: ryoutu_port.id, departure_time: '12:55', arrival_port_id: niigata_port.id, arrival_time: '14:02', ship_id: jetfoil.id)
  Timetable.create!( departure_port_id: ryoutu_port.id, departure_time: '16:25', arrival_port_id: niigata_port.id, arrival_time: '17:32', ship_id: jetfoil.id)

  tokutou = ShipClass.create!(name:'特等',max_passenger:50,ship_section: :car_ferry)
  ittou_juutan = ShipClass.create!(name:'1等ジュウタン',max_passenger:50,ship_section: :car_ferry)
  ittou_isu = ShipClass.create!(name:'1等イス',max_passenger:50,ship_section: :car_ferry)
  nitou = ShipClass.create!(name:'2等',max_passenger:'',ship_section: :car_ferry)
  jetfoil = ShipClass.create!(name:'ジェットフォイル',max_passenger:100,ship_section: :jetfoil)

  Fare.create!(price:7150,type_section: :adult,ship_class_id: tokutou.id)
  Fare.create!(price:4870,type_section: :adult,ship_class_id: ittou_isu.id)
  Fare.create!(price:4870,type_section: :adult,ship_class_id: ittou_juutan.id)
  Fare.create!(price:2810,type_section: :adult,ship_class_id: nitou.id)
  Fare.create!(price:3580,type_section: :child,ship_class_id: tokutou.id)
  Fare.create!(price:2440,type_section: :child,ship_class_id: ittou_isu.id)
  Fare.create!(price:2440,type_section: :child,ship_class_id: ittou_juutan.id)
  Fare.create!(price:1410,type_section: :child,ship_class_id: nitou.id)

  Fare.create!(price:6900,type_section: :adult,ship_class_id: jetfoil.id)
  Fare.create!(price:3460,type_section: :child,ship_class_id: jetfoil.id)

  Fare.create!(price:520,type_section: :pet,ship_class_id: '')
  Fare.create!(price:520,type_section: :hand_luggage,ship_class_id: '')

end

