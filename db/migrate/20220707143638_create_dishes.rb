class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.money :cost
      t.integer :isEnable , default: 0

      t.timestamps
    end
  end
end
