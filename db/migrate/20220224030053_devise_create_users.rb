# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :name
      t.timestamps null: false
    end
    create_table :members do |t|
      t.string  :first_name,        null: false
      t.string  :family_name,       null: false
      t.string  :first_name_kana,   null: false
      t.string  :family_name_kana,  null: false
      t.date    :birthday,          null: false
      t.integer :gender,            null: false
      t.string  :telephone_number
      t.string  :landline_number
      t.string  :post_code,          null:false
      t.integer :municipalities,     null: false
      t.string  :address,            null: false
      t.string  :email,              null: false, unique: true

      t.timestamps
    end
    create_table :cars do |t|
      t.integer :car_model
      t.integer :car_displacement        
      t.string :car_registered_place        
      t.string :car_model_number     
      t.string :car_kana 
      t.string :car_number  

      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
