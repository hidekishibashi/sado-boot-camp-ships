class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string  :first_name        
      t.string  :family_name       
      t.string  :first_name_kana   
      t.string  :family_name_kana  
      t.string  :birthday_year          
      t.string  :birthday_month          
      t.string  :birthday_day          
      t.string  :gender            
      t.string  :telephone_number_first
      t.string  :telephone_number_second
      t.string  :telephone_number_third
      t.string  :landline_number_first
      t.string  :landline_number_second
      t.string  :landline_number_third
      t.string  :post_code          
      t.string  :municipalities     
      t.string  :address                          

      t.timestamps
    end
  end
end
