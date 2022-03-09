class CreateMybros < ActiveRecord::Migration[6.1]
  def change
    create_table :mybros do |t|
      t.string :name
      t.integer :age
      t.string :likes

      t.timestamps
    end
  end
end
