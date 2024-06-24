class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.integer :car_model
      t.integer :car_model_second
      t.integer :car_displacement  
      t.integer :car_displacement_second      
      t.string :car_registered_place
      t.string :car_registered_place_second       
      t.string :car_model_number
      t.string :car_model_number_second     
      t.string :car_kana 
      t.string :car_kana_second
      t.string :car_number  
      t.string :car_number_second

      t.timestamps
    end
  end
end
