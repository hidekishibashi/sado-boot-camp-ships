class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string  :first_name        
      t.string  :family_name       
      t.string  :first_name_kana   
      t.string  :family_name_kana  
      t.date    :birthday_year          
      t.date    :birthday_month          
      t.date    :birthday_day          
      t.integer :gender            
      t.string  :telephone_number_first
      t.string  :telephone_number_second
      t.string  :telephone_number_third
      t.string  :landline_number_first
      t.string  :landline_number_second
      t.string  :landline_number_third
      t.string  :post_code          
      t.integer :municipalities     
      t.string  :address            
      t.string  :email              

      t.timestamps
    end
  end
end
