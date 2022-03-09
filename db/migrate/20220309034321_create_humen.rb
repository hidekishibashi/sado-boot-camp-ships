class CreateHumen < ActiveRecord::Migration[6.1]
  def change
    create_table :humen do |t|
      t.string :name
      t.integer :age
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
