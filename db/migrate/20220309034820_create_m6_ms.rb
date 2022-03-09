class CreateM6Ms < ActiveRecord::Migration[6.1]
  def change
    create_table :m6_ms do |t|
      t.string :text
      t.integer :level
      t.integer :type

      t.timestamps
    end
  end
end
