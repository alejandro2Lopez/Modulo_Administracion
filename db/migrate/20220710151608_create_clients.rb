class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :last_name
      t.string :password
      t.string :email
      t.string :adress
      t.integer :block, default: 1
      t.timestamps
    end
  end
end
